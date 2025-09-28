% Simetría de un triángulo 
% Muestra las 6 transformaciones aplicadas a un triángulo equilátero sin
% modificar su forma, tamaño y dirección.

clc; clear; close all;

% Definir vértices
V1 = [1; 0];
V2 = [-0.5;  sqrt(3)/2];
V3 = [-0.5; -sqrt(3)/2];
V  = [V1, V2, V3];  % matriz 2x3

% ========================
% 2. Definir matrices
% ========================
N  = [1 0; 0 1];
R  = [-0.5 -sqrt(3)/2;  sqrt(3)/2 -0.5];   % rotación 120°
W  = [-0.5  sqrt(3)/2; -sqrt(3)/2 -0.5];   % rotación -120°
S  = [1 0; 0 -1];                          % reflexión eje x (mediana V1)
Sp = [-0.5 -sqrt(3)/2; -sqrt(3)/2 0.5];    % reflexión mediana V2
S2 = [-0.5  sqrt(3)/2;  sqrt(3)/2 0.5];    % reflexión mediana V3

transf = {N,R,W,S,Sp,S2};
names  = {'N','R','W','S','S''','S"'}; % nombres

% ========================
% 3. Graficar
% ========================
figure('Name','Transformaciones aplicadas a un Triángulo Equilátero');

for k = 1:numel(transf)
    M = transf{k};
    Vk = M*V;  % imagen de los vértices (2x3)
    
    % Subplot 2x3
    subplot(2,3,k);
    hold on; axis equal; grid on;
    
    % triángulo original
    fill([V(1,:) V(1,1)], [V(2,:) V(2,1)], 'c','FaceAlpha',0.2,'LineStyle','--');
    % triángulo imagen
    fill([Vk(1,:) Vk(1,1)], [Vk(2,:) Vk(2,1)], 'm','FaceAlpha',0.4);
    
    % Etiquetas vértices originales
    for i = 1:3
        text(V(1,i), V(2,i), sprintf('V%d',i), 'FontWeight','bold');
    end
    % Etiquetas vértices imagen
    for i = 1:3
        text(Vk(1,i), Vk(2,i), sprintf('%sV%d',names{k},i), 'Color','r');
    end
    
    title(['Transformación ' names{k}]);
    xlim([-1.5 1.5]); ylim([-1.5 1.5]); % mismo rango en todos
end