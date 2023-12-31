import mediapipe as mp
import cv2
import numpy as np
import uuid
import os
import math

mp_drawing = mp.solutions.drawing_utils
mp_hands = mp.solutions.hands

import zmq
import numpy as np
import cv2


def Hands_proces(Mode):
    try:
        capture = Mode
    except ValueError:
        pass    
    try:
        ip = Mode
    except ValueError:
        pass
    try:
            context = zmq.Context()
            socket = context.socket(zmq.SUB)
            socket.connect(f"tcp://{ip}:5555")
            socket.setsockopt_string(zmq.SUBSCRIBE, "")
            socket_active = True
    except Exception as e:
            socket_active = False
            print(f"Excepción durante la configuración del socket: {e}")
            # Puedes agregar más acciones aquí si es necesario
            pass 
    def calculate_angle(x1, y1, x2, y2, x3, y3):
        """Calcula el ángulo entre tres puntos (en grados)."""
        angle_rad = math.atan2(y3 - y2, x3 - x2) - math.atan2(y1 - y2, x1 - x2)
        angle_deg = math.degrees(angle_rad)
        return angle_deg

    # Crear ventanas
    cv2.namedWindow('Hand Tracking', cv2.WINDOW_AUTOSIZE)
    cv2.namedWindow('Angle Data', cv2.WINDOW_AUTOSIZE)

    # Crear frame_resizedn para mostrar ángulos
    angle_data = np.zeros((800, 600, 3), dtype=np.uint8)
    angle_data.fill(255)  # Fondo blanco

    # Crear tablas y textos de nombres de dedos
    cv2.putText(angle_data, 'Ángulos - Izquierda', (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
    cv2.putText(angle_data, 'Dedo', (10, 80), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
    cv2.putText(angle_data, 'Ángulo', (110, 80), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)

    cv2.putText(angle_data, 'Ángulos - Derecha', (310, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
    cv2.putText(angle_data, 'Dedo', (310, 80), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
    cv2.putText(angle_data, 'Ángulo', (410, 80), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)

    with mp_hands.Hands(min_detection_confidence=0.9, min_tracking_confidence=0.9, max_num_hands=2) as hands: 
        while True:
                 #zqm connection
                if socket_active == True:
                    message = socket.recv()
                    frame_data = np.frombuffer(message, dtype=np.uint8)
                    frame = cv2.imdecode(frame_data, cv2.IMREAD_COLOR)
                    frame = cv2.resize(frame, (512, 424))
                    frame_resized= frame
            #Video conection    
                else:
                    try:   
                        if capture is not None and capture.isOpened():
                            frame_cam = capture.read()
                            print(frame_cam)
                            frame_cam = cv2.resize(frame_cam, (512, 424)) 
                            frame_resized = frame_cam
                    except Exception as e: 
                        print(f"Esta dando este error {e}")
                        break
                # Flip on horizontal
                frame_resized = cv2.flip(frame_resized, 1)
                
                # Set flag
                frame_resized.flags.writeable = False
                
                # Detections
                results = hands.process(frame_resized)
                
                # Set flag to true
                frame_resized.flags.writeable = True
                
                # RGB 2 BGR
                frame_resized = cv2.cvtColor(frame_resized, cv2.COLOR_RGB2BGR)
                
                
                # Variables para almacenar ángulos
                angle_thumb_left, angle_thumb_right = 0, 0
                angle_left, angle_right = 0, 0

                # Borrar contenido anterior en la ventana de datos
                angle_data.fill(255)
                cv2.putText(angle_data, 'Ángulos - Izquierda', (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
                cv2.putText(angle_data, 'Dedo', (10, 80), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
                cv2.putText(angle_data, 'Ángulo', (110, 80), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
                cv2.putText(angle_data, 'Ángulos - Derecha', (310, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
                cv2.putText(angle_data, 'Dedo', (310, 80), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
                cv2.putText(angle_data, 'Ángulo', (410, 80), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)

                # Rendering results
                if results.multi_hand_landmarks:
                    for num, hand in enumerate(results.multi_hand_landmarks):
                        mp_drawing.draw_landmarks(frame_resized, hand, mp_hands.HAND_CONNECTIONS, 
                                                mp_drawing.DrawingSpec(color=(121, 22, 76), thickness=2, circle_radius=4),
                                                mp_drawing.DrawingSpec(color=(250, 44, 250), thickness=2, circle_radius=2),
                                                )
                        
                        # Calcular ángulos para cada dedo
                        if len(hand.landmark) == 21:
                            # Determinar si la mano es izquierda o derecha
                            if hand.landmark[0].x < hand.landmark[9].x:
                                side = 'Izquierda'
                                angle_text_position = (10, 80)
                                table_start_position = (10, 110)
                            else:
                                side = 'Derecha'
                                angle_text_position = (310, 80)
                                table_start_position = (310, 110)

                            # Dedo pulgar
                            if side == 'Izquierda':
                                angle_thumb_left = calculate_angle(hand.landmark[0].x, hand.landmark[0].y,
                                                                hand.landmark[1].x, hand.landmark[1].y,
                                                                hand.landmark[2].x, hand.landmark[2].y)
                            else:
                                angle_thumb_right = calculate_angle(hand.landmark[0].x, hand.landmark[0].y,
                                                                    hand.landmark[1].x, hand.landmark[1].y,
                                                                    hand.landmark[2].x, hand.landmark[2].y)

                            # Otros dedos
                            for i in range(4, 21):
                                if i % 4 == 0:
                                    angle = calculate_angle(hand.landmark[i].x, hand.landmark[i].y,
                                                            hand.landmark[i-1].x, hand.landmark[i-1].y,
                                                            hand.landmark[i-2].x, hand.landmark[i-2].y)
                                    if side == 'Izquierda':
                                        angle_left = angle
                                        cv2.putText(angle_data, f'Dedo {i//4}', (table_start_position[0], table_start_position[1] + (i//4 - 1) * 30), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
                                        cv2.putText(angle_data, f'{int(angle)}', (table_start_position[0] + 200, table_start_position[1] + (i//4 - 1) * 30), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
                                    else:
                                        angle_right = angle
                                        cv2.putText(angle_data, f'Dedo {i//4}', (table_start_position[0], table_start_position[1] + (i//4 - 1) * 30), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
                                        cv2.putText(angle_data, f'{int(angle)}', (table_start_position[0] + 200, table_start_position[1] + (i//4 - 1) * 30), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
                    
                # Mostrar resultados en la ventana de tracking
                cv2.imshow('Hand Tracking', frame_resized)
                
                # Mostrar ángulos en la ventana de datos
                cv2.imshow('Angle Data', angle_data)

                if cv2.waitKey(10) & 0xFF == ord('q'):
                    break   
    
    cv2.destroyAllWindows()

def Hands(Mode):
    while True:
        try:
            Hands_proces(Mode)
        except AttributeError:
            pass