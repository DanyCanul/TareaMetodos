% Cubo RGB en 3D

% Limpia espacio de trabajo y cerrar figuras anteriores
clc; clear; close all;

% Definir los vértices del cubo (0 a 1 en RGB)
vertices = [0 0 0;
            1 0 0;
            1 1 0;
            0 1 0;
            0 0 1;
            1 0 1;
            1 1 1;
            0 1 1];

% Caras del cubo (índices de los vértices)
caras = [1 2 3 4;   % cara inferior (Z=0)
         5 6 7 8;   % cara superior (Z=1)
         1 2 6 5;   % cara frontal (Y=0)
         2 3 7 6;   % cara lateral (X=1)
         3 4 8 7;   % cara posterior (Y=1)
         4 1 5 8];  % cara lateral (X=0)

% Crear figura
figure
hold on
for i = 1:size(caras,1)
    % Dibujar cada cara con color interpolado y transparencia
    patch('Vertices', vertices, ...
          'Faces', caras(i,:), ...
          'FaceVertexCData', vertices, ...
          'FaceColor', 'interp', ...
          'FaceAlpha', 0.85, ...   % nivel de transparencia (0=transparente, 1=opaco)
          'EdgeColor', 'none');    % sin bordes para que se vea más limpio
end

% Configuración de ejes
axis equal
xlabel('Rojo (R)')
ylabel('Verde (G)')
zlabel('Azul (B)')
title('Cubo RGB en 3D')
grid on
box on
view(120,30)  
axis([-0.2 1.4 -0.2 1.4 -0.2 1.4]);
rotate3d on    % Permite rotar con el mouse
