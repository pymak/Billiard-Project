% Auteurs: Rafaela Rebeiz, Jamil Mansour, Makram Fadel, Kevin Jandri
clear
close all
filename = "T7";
line = ".-";
rgb1 = [100	255	0
];
rgb2 = [255	0	0
];
Xr=[269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,268,268,268,267,267,267,267,267,267,266,255,249
];
Yr=[103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103
];
Xy=[213,213,213,213,213,213,213,213,213,213,213,213,213,213,213,187,145,167,199,229,261,319,347,376,401,454,479,504,528,574,598,621,644,691,714,720,701,662,644,626,610,577,561,547,533,507,494,481,468,443,430,417,405,379,367,354,341,316,304,291,278,254,241,228,216,191,179,167,154,129,130,140,150,168,175,183,190,204,211,218,225,238,245,252,259,273,279,286,293,307,313,320,327,339,346,353,359,372,379,386,392,405,412,418,425,437,444,450,457,469,476,482,488,501,507,513,519,532,538,544,550,562,568,574,580,593,598,604,610,622,628,634,640,652,657,663,669,680,686,692,697,709,715,720,725,718,714,711,708,702,699,696,693,686,683,680,677,671,668,665,662,656,653,651,648,642,639,637,634,628,626,623,620,615,612,609,607,602,599,596,594,589,586,584,581,576,574,572,569,564,562,559,557,553,550,548,546,541,539,536,535,530,528,526,524,519,517,515,513,509,507,505,503,499,497,495,493,489,488,486,484,480,478,477,475,471,470,468,466,463,461,459,458,454,453,451,450,447,445,444,442,439,438,436,435,432,431,429,428,425,424,423,421,419,417,416,415,412,411,410,409,407,405,405,404,401,400,399,398,396,395,394,393,393,393
];
Yy=[205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,201,199,198,200,200,200,200,201,201,201,203,203,203,203,204,205,205,204,205,206,206,206,207,207,208,209,211,211,212,212,213,213,214,215,216,216,217,217,219,219,219,220,221,221,222,222,223,224,224,225,226,226,227,227,228,228,228,228,229,229,229,229,229,230,230,230,230,230,230,231,231,231,231,231,232,231,232,232,232,233,233,233,233,233,234,234,234,234,234,235,235,235,235,235,235,235,235,235,236,237,237,237,237,237,238,238,238,238,238,238,239,239,239,240,240,240,240,240,241,241,241,241,242,242,242,243,243,243,243,243,244,244,244,244,244,244,244,244,244,244,244,244,244,245,245,245,245,245,245,245,245,245,245,245,245,245,245,245,245,245,244,245,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,244,243,243,243,243,243,243,243,243,243,243,242,242,242,243,243,243,242,242,242,242,242,242,241,241,241,241,241,241,241,241,241,241,241,241,240,240,240,240,239,239,239,239,239,239,239,239,239,239,239,239,239,239,239,239,239,239,239,239,239,239,237,237,237,238,237,237,237,237,237,237,237,236,236,236,236,236,236,236
];
Xw=[490,490,490,490,490,490,490,490,490,490,479,431,382,288,243,226,223,215,210,205,199,186,179,172,164,150,142,135,128,146,154,162,170,184,190,196,202,213,219,224,230,241,247,253,258,269,275,280,286,297,302,308,314,324,330,336,342,355,362,369,376,389,396,403,409,423,429,436,442,456,462,469,475,488,495,501,508,521,527,533,540,553,559,565,571,584,590,597,603,615,622,628,634,646,653,658,665,677,683,689,695,707,713,719,725,721,717,713,710,704,700,697,694,688,685,681,678,671,668,665,662,655,652,649,646,639,636,633,630,624,620,617,614,608,605,602,599,593,590,587,584,579,576,573,570,564,561,559,556,550,547,545,542,537,534,531,528,523,520,518,515,510,507,504,502,497,494,492,489,484,482,479,477,472,470,467,465,460,458,455,453,448,446,444,442,437,435,433,430,426,424,421,419,415,413,411,409,405,403,401,399,395,393,391,389,385,383,381,379,375,373,371,369,366,364,362,360,357,355,353,352,348,346,345,343,340,338,337,335,332,330,329,327,324,323,321,320,317,316,314,313,310,309,307,306,303,302,300,299,296,295,294,293,291,290,289,288,287,286,285,284,282,282,281,281,280,280,279,279,278,278,278,277,277,277
];
Yw=[135,135,135,135,135,135,135,135,135,135,139,152,165,191,203,217,231,258,271,283,296,319,330,342,353,375,386,394,385,362,351,340,331,312,303,295,287,272,264,256,248,233,225,217,210,194,187,179,171,156,149,141,133,118,111,104,103,114,119,124,128,136,140,144,148,156,160,164,168,176,180,184,188,196,200,204,208,216,220,224,228,235,239,243,247,254,258,262,266,273,277,281,285,292,296,299,303,311,314,318,321,329,333,336,340,348,352,357,361,370,374,378,382,390,392,389,386,381,379,377,375,370,367,365,363,358,356,354,351,347,345,343,340,335,333,331,329,325,322,320,318,314,312,309,307,304,302,299,297,293,291,289,287,283,281,279,277,273,271,269,267,263,261,259,258,254,252,250,248,244,242,240,239,235,233,231,230,226,224,223,221,217,216,214,212,209,207,205,204,200,199,197,195,192,190,189,187,184,182,181,179,176,175,173,172,169,167,166,165,162,160,159,157,154,153,152,151,148,147,145,144,142,140,139,138,135,134,133,131,129,128,126,125,123,122,120,119,117,116,115,114,112,111,110,108,106,105,105,104,103,103,103,103,103,103,104,104,105,105,106,106,107,108,108,109,110,111,111,111,112,113,113,114,114,114
];


% Main
% Définir les constantes, qui sont elles-mêmes redéfinies par LabVIEW.

                                     
SeqDateTime = datetime('now');       
MoveDistPx = 9;                                     
BallBorderDist = 9;
COLOR_R = 'r';
COLOR_Y = [0.9 0.8 0.2];   % Le jaune par défaut de MATLAB n'est pas très agréable à voir sur un fond blanc.
COLOR_W = 'b';             % La balle blanche est de couleur bleue. 



                                  
Color_touch_win = rgb1 / 255;
Color_touch_loose = rgb2 / 255;   % On divise par 255 pour pouvoir utiliser ces couleurs.


% Nettoyer les données (NaN et Outliers)

[Xr, Yr] = InterpolateNan(Xr, Yr);
[Xy, Yy] = InterpolateNan(Xy, Yy);
[Xw, Yw] = InterpolateNan(Xw, Yw);

[Xr, Yr] = RemoveOutlier(Xr, Yr);
[Xy, Yy] = RemoveOutlier(Xy, Yy);
[Xw, Yw] = RemoveOutlier(Xw, Yw);     


% Calculer le cadre 

[Xmin, Xmax, Ymin, Ymax] = GetFrame(Xr, Yr, Xy, Yy, Xw, Yw);

% Calculer les longueurs de trajet

PathR = GetBallPathLength(Xr, Yr);
PathY = GetBallPathLength(Xy, Yy);
PathW = GetBallPathLength(Xw, Yw);



% Calculer l'ordre de mouvement

[FirstBall, SecondBall, LastBall, NbBallsMoved] = GetBallMoveOrder(Xr, Yr, Xy, Yy, Xw, Yw, MoveDistPx); 

disp(' ');
disp('Ordre de mouvement : ')
disp(' ');
disp('FirstBall = ');
disp(FirstBall);

disp('SecondBall = ');
disp(SecondBall);                % Si une balle ne bouge pas, valeur = 0 
                                 % Convention :   
disp('LastBall = ');             % Red = 1 Yellow = 2 White = 3
disp(LastBall);

disp('NbBallsMoved = ');
disp(NbBallsMoved);



% Get first move idx of each ball

firstmoveR = GetFirstMoveIdx(Xr, Yr, MoveDistPx);
firstmoveY = GetFirstMoveIdx(Xy, Yy, MoveDistPx);      % Note: On suppose que par exemple la balle jaune (FirstBall) touche la rouge a firstmoveR 
firstmoveW = GetFirstMoveIdx(Xw, Yw, MoveDistPx);            % et la blanche à firstmoveW, donc une 2nd ball et 3rd ball ne bouge que lorsqu'elles
                                                             % sont touchées par 1st Ball
                                                             
                                                             
disp('Indices first move : ');
disp(' ');
disp('Red = ');
disp(firstmoveR);
disp('Yellow = ');                 % Si une balle ne bouge pas, valeur = []
disp(firstmoveY);
disp('White = ');
disp(firstmoveW);


% Trouver la première boule à bouger
% Name1 is the first ball that moved

if FirstBall == 1
    Name1 = 'red';
    Name1txt = 'r';
elseif FirstBall == 2
    Name1 = 'yellow';   
    Name1txt = 'y';
elseif FirstBall == 3
    Name1 = 'white';
    Name1txt = 'w';
else 
    Name1 = 'No ball moved'; % cas où aucune balle ne bouge
    Name1txt ='N/A';
end


% Trouver TOUS les points de chocs 
if strcmp(Name1, 'red')  % strcmp() check si Name1 = 'red'
    touch = GetTouchIdx(Xr, Yr, Xmin, Xmax, Ymin, Ymax, BallBorderDist);      % GetTouchIdx prend TOUS les rebonds.
    
elseif strcmp(Name1, 'yellow')
    touch = GetTouchIdx(Xy, Yy, Xmin, Xmax, Ymin, Ymax, BallBorderDist);       
                                                                             
elseif strcmp(Name1, 'white')
    touch = GetTouchIdx(Xw, Yw, Xmin, Xmax, Ymin, Ymax, BallBorderDist);

else
    touch = [];   % si aucune balle ne bouge, pour pas avoir de errors après dans les plots
end


disp('Touch idexes with no filtering (TOTAL TOUCHES) = ');
disp(touch);
    

% Test si la balle Win or Lose



if NbBallsMoved < 3    
    WinLose = '---Lose---';       % Notre convention : Si pas toutes les balles bouges (donc Lose), on va juste prendre TOUS LES REBONDS de la boule, on ne filtre pas touch.
    WinLosetxt = 'l';

    touch_nb = numel(touch);

    disp('Number of Touches TOTAL (cas où NbBallsMoved < 3, no filtering)  = ');
    disp(touch_nb);

    % disp (touch) pas nécessaire car déjà fait en haut, et touch reste le
    % même

else                       % On suppose donc ici que toutes les boules bougent, donc on filtre touch : on ne garde que les indices entre les indices de SecondBall et LastBall
    if FirstBall == 1 
        if SecondBall == 2
            touch = touch(touch >= firstmoveY & touch <= firstmoveW);
        else 
            touch = touch(touch >= firstmoveW & touch <= firstmoveY);         
        end
    
    elseif FirstBall == 2
        if SecondBall == 1
            touch = touch(touch >= firstmoveR & touch <= firstmoveW);         
        else
            touch = touch(touch >= firstmoveW & touch <= firstmoveR);
        end
    
    elseif FirstBall == 3 
        if SecondBall == 1
            touch = touch(touch >= firstmoveR & touch <= firstmoveY);
        else
            touch = touch(touch >= firstmoveY & touch <= firstmoveR);
        end
    end
    
    disp('Touch filtered = ');                 % Ici on n'a pas touch TOTAL, mais touch entre 2ème et 3ème boule
    disp(touch);

    touch_nb = numel(touch);            
    
    disp('Number of Touch filtered = ');       % Nombre de touch entre 2ème et 3ème boule
    disp(touch_nb);
    
    if touch_nb >= 3
        WinLose = '---Win---';
        WinLosetxt = 'w';
    else
        WinLose = '---Lose---';               % plus robuste, pas de risque de unrecognised variable
        WinLosetxt = 'l';
    end
end


    

% Note: On suppose que la SecondBall et LastBall bouge seulement lorsque
% la FirstBall les touche.

% Voir aussi documentation pour les choix de touch et touch_nb selon les
% cas


    

% 4. CRÉATION DU GRAPHIQUE

fig = figure('Name', 'ScoreSheet', 'Color', 'w');    % pour voir résultat directement sur MatLab
hold on;

% Tracer les trajectoires
plot(Xr, 480 - Yr, line , 'Color', COLOR_R, 'LineWidth', 1);                          
plot(Xy, 480 - Yy, line , 'Color', COLOR_Y, 'LineWidth', 1);                          
plot(Xw, 480 - Yw, line , 'Color', COLOR_W, 'LineWidth', 1);

% Tracer le cadre du billard
W = Xmax - Xmin;
H = Ymax - Ymin;
rectangle('Position', [Xmin, 480 - Ymax, W, H], 'EdgeColor', 'b', 'LineWidth', 1);

% Tracer les étoiles de position initiale
plot(Xr(1), 480 - Yr(1), 'hexagram', 'MarkerSize', 15, 'MarkerEdgeColor', 'k');
plot(Xy(1), 480 - Yy(1), 'hexagram', 'MarkerSize', 15, 'MarkerEdgeColor', 'k');     
plot(Xw(1), 480 - Yw(1), 'hexagram', 'MarkerSize', 15, 'MarkerEdgeColor', 'k');




% Tracer les chocs (cercles)

if strcmp(WinLose, '---Win---')

    if strcmp(Name1, 'red')
        plot(Xr(touch), 480 - Yr(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_win, 'LineWidth', 1);
    
    elseif strcmp(Name1, 'yellow')
        plot(Xy(touch), 480 - Yy(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_win, 'LineWidth', 1);  
    
    elseif strcmp(Name1, 'white')
        plot(Xw(touch), 480 - Yw(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_win, 'LineWidth', 1);
    
    end

else                                  % soit on gagne soit ou perd.         Mais elseif inside because we can have Name1 = 'No ball moved'.
    
    if strcmp(Name1, 'red')
        plot(Xr(touch), 480 - Yr(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_loose, 'LineWidth', 1);
    
    elseif strcmp(Name1, 'yellow')
        plot(Xy(touch), 480 - Yy(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_loose, 'LineWidth', 1);  
    
    elseif strcmp(Name1, 'white')
        plot(Xw(touch), 480 - Yw(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_loose, 'LineWidth', 1);
    
    end
end

% Mise en forme du graphique
axis equal; % Assure un ratio 1:1
axis off;   % Cache les axes x/y
set(gca, 'Color', 'w'); % Fond blanc
set(gcf, 'Color', 'w');
set(gcf, 'InvertHardcopy', 'off'); % Garde le fond blanc lors de la sauvegarde, pour empecher de mauvaise surprise

% Le titre
titleStr = sprintf('Scores sheet - %s - (%s)', filename, SeqDateTime);
title(titleStr, 'Color', 'k', 'FontSize', 14, 'FontWeight', 'bold');

% Ajouter les annotations de texte (en bas)
Y_txt_line1 = Ymax + 10;
Y_txt_line2 = Ymax + 50;
Y_coord1 = 480 - Y_txt_line1;
Y_coord2 = 480 - Y_txt_line2;       %480 - : pour rammener le Y à notre repère classique





winnerStr = sprintf('Score sheet for "%s"\n %s', Name1, WinLose);
text(Xmin, Y_coord1, winnerStr, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top');

distStrR = sprintf('red_d:%dpx', round(PathR));
text(Xmin, Y_coord2, distStrR, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top');             

distStrY = sprintf('yellow_d:%dpx', round(PathY));
text(Xmax / 2, Y_coord2, distStrY, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top');

distStrW = sprintf('white_d:%dpx', round(PathW));
text(Xmax, Y_coord2, distStrW, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');

summaryStr = sprintf('%d ball(s) moved\n%d band(s) touched', NbBallsMoved, touch_nb);
text(Xmax, Y_coord1, summaryStr, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');

hold off;

% 5. SAUVEGARDE DES RÉSULTATS


% Sauvegarder l'image en PDF
PdfFileName = sprintf('ScoreSheet%s.pdf', filename);    
print(fig, PdfFileName, '-dpdf', '-fillpage');
fprintf('Graphique sauvegardé sous le nom : %s\n', PdfFileName);

% Sauvegarder le résumé en TXT
txtFileName = sprintf('Summary%s.txt', filename);
fid = fopen(txtFileName, 'w');
if fid == -1
    error('Impossible de créer le fichier TXT.');
end



fprintf(fid, 'f:%s; ',Name1txt);
fprintf(fid, 's:%s; ',WinLosetxt);
fprintf(fid, 'n:%d; ',NbBallsMoved);
fprintf(fid, 'b:%d; ',touch_nb);
fprintf(fid, 'rb:%d; ',round(PathR));
fprintf(fid, 'yb:%d; ',round(PathY));
fprintf(fid, 'wb:%d; ',round(PathW));



fclose(fid);
fprintf('Résumé sauvegardé sous le nom : %s\n', txtFileName);



% ########################################################################
%
%  DEFINITION DES FONCTIONS LOCALES
%
% ########################################################################


% EXO 4
function [X, Y] = InterpolateNan(X,Y)
    added_start = false;
    added_end = false;    % on ajoute au début ou à la fin un zéro pour éviter les problèmes de bords.
    if isnan(X(1))
        X = [0 , X];
        Y = [0 , Y];
        added_start = true;
    end
    
    if isnan(X(end))
        X(end + 1) = 0;
        Y(end + 1) = 0;
        added_end = true; 
    end
    
    idx_connus_X = find(~isnan(X));
    
    valeurs_connues_X = X(idx_connus_X);
    
    idx_tous_X = 1:length(X);
    X = interp1(idx_connus_X, valeurs_connues_X, idx_tous_X, 'next');
    
    idx_connus_Y = find(~isnan(Y));
    
    valeurs_connues_Y = Y(idx_connus_Y);
    
    idx_tous_Y = 1:length(Y);
    Y = interp1(idx_connus_Y, valeurs_connues_Y, idx_tous_Y, 'next');
    
    if added_start
        X = X(2:end);
        Y = Y(2:end);
    end
    if added_end
        X = X(1:end-1);
        Y = Y(1:end-1);
    end
    
end


% Note : On considère que le premier élément ne peut pas être un outlier.

function[X,Y] = RemoveOutlier(X, Y)

outlierX = isoutlier(X, 'movmedian', 10);
outlierY = isoutlier(Y, 'movmedian', 10);

outlierX([1 end]) = false;
outlierY([1 end]) = false; 

idx_out_X = find(outlierX);        % done les index ou ya les outliers dans X
X(idx_out_X) = X(idx_out_X - 1);   % remplace valeur outlier par precedente valeur ie (-1)

idx_out_Y = find(outlierY);         % pas de risque de index out of range  car (1) et (end) = false dans le logical array
Y(idx_out_Y) = Y(idx_out_Y - 1);    % pas de problème de faire juste -1 car il n'y a pas de groupe d'outliers.


end



% EXO 2
function [Xmin, Xmax, Ymin, Ymax] = GetFrame(Xr, Yr, Xy, Yy, Xw, Yw)
    all_X = [Xr, Xy, Xw];
    all_Y = [Yr, Yy, Yw];
    
    Xmin = min(all_X);
    Xmax = max(all_X);    %calcul min et max global
    Ymin = min(all_Y);
    Ymax = max(all_Y);
end


function PathLength = GetBallPathLength(X,Y)
    
    norme = sqrt(diff(X).^2 + diff(Y).^2);
    PathLength = sum(norme); 

end



function [FirstMoveIdx, MoveDist] = GetFirstMoveIdx(X, Y, MoveDistPx)
   

    MoveDist = sqrt(diff(X.^2) + diff(Y.^2));    % les segments(distances) entre chaque positions consécutives, pour utiliser après pour trouver FirstBall
                                                 
                                                 
                                                 
    X = X - X(1);                        % changement de référentiel                                             
    Y = Y - Y(1);
    distance = sqrt(X.^2 + Y.^2);        % ici pas besoin de faire diff() car distance par rapport à X(1) et Y(1), pas entre positions consécutives 
                                                                           
    FirstMoveIdx = find(distance > MoveDistPx, 1 , 'first');   % prend le premier indice tel que la distance > MoveDistPix 
    

end



% EXO 3
function [IdxTouch] = GetTouchIdx(X, Y, Xmin, Xmax, Ymin, Ymax, BallBorderDist)

    idxLeft = find(X - Xmin <= BallBorderDist);
    idxRight = find(Xmax - X <= BallBorderDist);     
    idxTop = find(Y - Ymin <= BallBorderDist);       
    idxBottom = find(Ymax - Y <= BallBorderDist); 

    % Dans cette fonction, il y a 2 choses à checker. Si deux bords sont hit
    % successivement et si deux boules satisfont la condition du find.
    % Ce sont deux cas différents, qu'on ne peut pas checker d'un seul coup.
    % On commence d'abord par checker chaque bord seul si on a des index
    % successifs. Sinon, si je check après tout avoir mis ensemble, je risque
    % de perdre des rebonds sur des bords successifs, qui se feront passer
    % pour des doublons qui satisfont la condition <= BallBorder Dist
   
                                                                                                           
    if ~isempty(idxLeft)                                   
        idxLeft = idxLeft([true, diff(idxLeft) > 1]);      % true, c'est pour ajouter true au vecteur logique au début, comme ça on ne prend que le 1er indice détecté
    end
    if ~isempty(idxRight) 
        idxRight = idxRight([true, diff(idxRight) > 1]);                                                 
    end
    if ~isempty(idxTop) 
        idxTop = idxTop([true, diff(idxTop) > 1]);            
    end
    if ~isempty(idxBottom) 
        idxBottom = idxBottom([true, diff(idxBottom) > 1]);    
    end
               
    [IdxTouch] = [idxLeft idxRight idxTop idxBottom];  % on fusionne le tout
    [IdxTouch] = unique(IdxTouch);  % enlève les doublons éventuels et trie en ordre croissant.            
   
    IdxTouch(IdxTouch == 1) = [];             % On enlève index = 1, car une balle peut déjà être sur le bord au début de la partie.
  
end


                                                     
function [FirstBall,SecondBall,LastBall, NbBallsMoved] = GetBallMoveOrder(Xr, Yr, Xy, Yy, Xw, Yw, MoveDistPx)

    def_idx = [1 2 3];     % red = 1, yellow = 2 , white = 3
    
    [idxR,segsR] = GetFirstMoveIdx(Xr, Yr, MoveDistPx);
    [idxY,segsY] = GetFirstMoveIdx(Xy, Yy, MoveDistPx);        
    [idxW,segsW] = GetFirstMoveIdx(Xw, Yw, MoveDistPx);
    
    len = length(Xr);                       % Longueur de référence
    if isempty(idxR), idxR = len + 1; end
    if isempty(idxY), idxY = len + 1; end   % On donne valeur impossible, et on ne garde pas vide puisque sinon, on ne pourra pas trier par la suite.
    if isempty(idxW), idxW = len + 1; end
    
    d1R = 0;
    d1Y = 0;  % variable pour stocker distance initial parcourue
    d1W = 0;

    % fprintf('idxR=%s, idxY=%s, idxW=%s\n', mat2str(idxR), mat2str(idxY), mat2str(idxW)); 
    
    if ~isempty(segsR), d1R = segsR(1); end      % On garde juste 1er segment / distance initiale parcourue, d'où (1)
    if ~isempty(segsY), d1Y = segsY(1); end      % Si non vide, donne aux variables distance initale parcourue, sinon reste 0
    if ~isempty(segsW), d1W = segsW(1); end
    
    % fprintf('d1R=%.3f, d1Y=%.3f, d1W=%.3f\n', d1R, d1Y, d1W);

    store_idx = [idxR idxY idxW];                                                                           
    store_d1 = [d1R d1Y d1W];                 
                                                 % sortrows() : On utilise le tri des élements des colonnes pour bouger les lignes de la matrice                                                                  
    M = [store_idx(:) store_d1(:) def_idx(:)];   % Tri d'abord selon la colonne 1 dans l'ordre croissant, boule qui bouge en premier a le plus petit indice et donc est au début de la colonne 1     
    M = sortrows(M, [1 -2]);                     % Ensuite, si deux lignes on la même valeur dans la colonne 1 i.e: on a le meme indice, alors on trie encore la matrice suivant la 2eme colonne
                                                 % Et dans ce cas, les seules lignes qui bougent sont celles où dans la colonne 1 y'a eu une égalité
                                                 
                                                 % Le - c'est juste pour
                                                 % trier dans l'ordre
                                                 % décroissant les
                                                 % distances initiales, car
                                                 % on veut la plus grande
                                                 % distance initiale
                                                 % parcourue.



    moved_idx = M(M(:,1) <= len, 3).'; % Filtre en utilisant len (et donc len + 1 impossible d'être pris) pour enfin trouver l'ordre des boules
    NbBallsMoved = numel(moved_idx);


    %disp(moved_idx);
    %disp(d1R);                        
    %disp(d1Y);           % to test intermediate values
    %disp(d1W);

    FirstBall = 0; SecondBall = 0; LastBall = 0;
    
    if NbBallsMoved >= 1, FirstBall = moved_idx(1); end     
    if NbBallsMoved >= 2, SecondBall = moved_idx(2); end
    if NbBallsMoved >= 3, LastBall = moved_idx(3); end
   
end



% Version 26 Decembre 10:30 PM 