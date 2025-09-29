% Programa para generar gráficas de bases de espacios vectoriales
clc; clear; close all;

% Ya que se usan funciones seno y coseno definimos un rango para theta
theta = linspace(0, 2*pi, 1000);

% Definir los rangos para los coeficientes Ai y Bi
Ai = -10:1:10;  % Valores de -10 a 10
Bi = -10:1:10;  % Valores de -10 a 10

%Creamos la figura
figure;

%% Graficas de las funciones seno y coseno

% Gráfica 1: Ai*cos(theta) + Bi*sen(theta)
subplot(2,2,1);
hold on;
grid on;
title('f1(\theta) = Ai\cdotcos(\theta) + Bi\cdotsen(\theta)');
xlabel('\theta (rad)');
ylabel('f1(\theta)');

% Gráfica 2: Ai*cos(theta) - Bi*sen(theta)
subplot(2,2,2);
hold on;
grid on;
title('f2(\theta) = Ai\cdotcos(\theta) - Bi\cdotsen(\theta)');
xlabel('\theta (rad)');
ylabel('f2(\theta)');

% Generar las gráficas de las funciones
for i = 1:length(Ai)
    for j = 1:length(Bi)
        % Calcular las funciones
        f1 = Ai(i)*cos(theta) + Bi(j)*sin(theta);
        f2 = Ai(i)*cos(theta) - Bi(j)*sin(theta);
        
        % Graficar en subplots correspondientes
        subplot(2,2,1);
        plot(theta, f1, 'LineWidth', 0.5, 'Color', [0.2, 0.4, 0.8, 0.3]);
        
        subplot(2,2,2);
        plot(theta, f2, 'LineWidth', 0.5, 'Color', [0.8, 0.2, 0.2, 0.3]);
    end
end

% Ajustar límites de los ejes en gráficas superiores
subplot(2,2,1);
xlim([0, 2*pi]);

subplot(2,2,2);
xlim([0, 2*pi]);

%% PARTE INFERIOR: Gráficas de los componentes (rectas)

% Gráfica 3: Ai vs Bi (rectas)
subplot(2,2,3);
hold on;
grid on;
title('Componentes: Ai vs Bi');
xlabel('Ai');
ylabel('Bi');

% Gráfica 4: Ai vs -Bi (rectas)
subplot(2,2,4);
hold on;
grid on;
title('Componentes: Ai vs -Bi');
xlabel('Ai');
ylabel('-Bi');

% Generar las rectas para Ai vs Bi y Ai vs -Bi
for i = 1:length(Ai)
    for j = 1:length(Bi)
        % Para Ai vs Bi: recta vertical en Ai y horizontal en Bi
        subplot(2,2,3);
        plot([Ai(i), Ai(i)], [-11, Bi(j)], 'b-', 'LineWidth', 0.5, 'Color', [0.2, 0.2, 0.8, 0.3]);
        plot([-11, Ai(i)], [Bi(j), Bi(j)], 'b-', 'LineWidth', 0.5, 'Color', [0.2, 0.2, 0.8, 0.3]);
        
        % Para Ai vs -Bi: recta vertical en Ai y horizontal en -Bi
        subplot(2,2,4);
        plot([Ai(i), Ai(i)], [-11, -Bi(j)], 'r-', 'LineWidth', 0.5, 'Color', [0.8, 0.2, 0.2, 0.3]);
        plot([-11, Ai(i)], [-Bi(j), -Bi(j)], 'r-', 'LineWidth', 0.5, 'Color', [0.8, 0.2, 0.2, 0.3]);
    end
end

% Ajustar límites y aspecto de las gráficas inferiores
subplot(2,2,3);
xlim([-11, 11]);
ylim([-11, 11]);
axis equal;

subplot(2,2,4);
xlim([-11, 11]);
ylim([-11, 11]);
axis equal;





