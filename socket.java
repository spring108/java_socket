import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.SocketTimeoutException;

public class TCPClient {
    public static void main(String[] args) {
        String serverAddress = "127.0.0.1"; // Адрес сервера
        int port = 9000; // Порт сервера
        int timeout = 5000; // Таймаут в миллисекундах

        try {
            // Создание сокета и подключение к серверу
            Socket socket = new Socket(serverAddress, port);

            // Установка таймаута для сокета
            socket.setSoTimeout(timeout);

            // Получение потоков ввода и вывода для обмена данными с сервером
            BufferedReader input = new BufferedReader(new InputStreamReader(socket.getInputStream()));
            PrintWriter output = new PrintWriter(socket.getOutputStream(), true);

            // Отправка сообщения на сервер
            output.println("GET http://localhost:9000/api?id=555\n\n");

            // Получение ответа от сервера
            try {
                String response = input.readLine();
                System.out.println("SERVER ANSVER: " + response);
            } catch (SocketTimeoutException e) {
                System.out.println("TIMEOUT!!");
            }

            // Закрытие соединения
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}