// Rafaela Rebeiz, Makram Fadel, Kevin Jandri, Jamil Mansour
// Note : Certains tests et printf() sont gardés en commentaires pour faciliter, si besoin, la vérification / le test de certaines valeurs intermédiaires.

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

// Définition des erreurs
#define errLigneCommande 1
#define errOuverture 2
#define errPixelsManquants 3
#define errRectInvalide 4
#define errRectNegatif 5
#define errColorRange 6
#define errBallDiam 7
#define errMalloc 8
#define errTropPetite 9
#define errTropGrande 10
#define errBallLettre 11

// Définition des constantes de référence
#define BALLMIN_SCORE 15


int err = 0;

typedef struct
{
    int ymin, ymax, xmin, xmax;
} Rect;

typedef struct
{
    int rmin, rmax;
    int gmin, gmax;
    int bmin, bmax;
} ColorRange;

typedef struct
{
    int x, y;
    unsigned score;
} Result;

// Lecture du code RGB d'un pixel (masking et shifting)
void rgb_from_uint(unsigned int p, unsigned *r, unsigned *g, unsigned *b)
{
    *r = (p >> 16) & 0xFF;
    *g = (p >> 8) & 0xFF;
    *b = p & 0xFF;
}

// Vérification de la plage de valeurs RGB d'un pixel.
bool in_range(unsigned r, unsigned g, unsigned b, const ColorRange *c)
{
    return (r >= (unsigned)c->rmin && r <= (unsigned)c->rmax) &&
           (g >= (unsigned)c->gmin && g <= (unsigned)c->gmax) &&
           (b >= (unsigned)c->bmin && b <= (unsigned)c->bmax);
}
// Renvoie TRUE si le pixel est bel et bien dans la plage de couleur RGB voulue, FALSE sinon.


// Fonction de recherche du meilleur carré pour une couleur
Result find_best_color(uint32_t *pixels, int largeur, int hauteur,
                       Rect rectInt, const ColorRange *color, int BallSize)
{
    Result best = {-1, -1, 0};        //on met ca pour que si on a jamais score++, on renvoie x = -1 y = -1 score = 0

    for (int i = rectInt.ymin; i <= rectInt.ymax - BallSize; i++)
    {
        for (int j = rectInt.xmin; j <= rectInt.xmax - BallSize; j++)
        {

            unsigned score = 0;

            // Lecture du carré de dimension BallSize x BallSize
            for (int dy = 0; dy < BallSize; dy++)
            {
                for (int dx = 0; dx < BallSize; dx++)
                {

                    uint32_t pix = pixels[(i + dy) * largeur + (j + dx)];
                    unsigned r, g, b;
                    rgb_from_uint(pix, &r, &g, &b);

                    if (in_range(r, g, b, color))
                    {
                        score++;
                    }
                }
    
            }

            // On garde le carré avec le meilleur score
            if (score > best.score)
            {
                best.score = score;
                best.x = j;
                best.y = i;
            }
        }
    
    }
    return best;
}


int main(int argc, char *argv[])
{
    
    // Vérification de la ligne de commande
    if (argc != 30)
    {
        fprintf(stderr, "ERREUR : il faut entrer exactement 29 nombres.\n");
        err = errLigneCommande;
        return err;
    }
  
    
// Étape 1: Récupération des paramètres + Translation char-int

    Rect rectInt;
    ColorRange ballRed, ballYellow, ballWhite, bgBlue;
    int BallDiam;
    
    rectInt.ymin = atoi(argv[1]);
    rectInt.ymax = atoi(argv[2]);
    rectInt.xmin = atoi(argv[3]);
    rectInt.xmax = atoi(argv[4]);

    ballRed.rmin = atoi(argv[5]);
    ballRed.rmax = atoi(argv[6]);
    ballRed.gmin = atoi(argv[7]);
    ballRed.gmax = atoi(argv[8]);
    ballRed.bmin = atoi(argv[9]);
    ballRed.bmax = atoi(argv[10]);

    ballYellow.rmin = atoi(argv[11]);
    ballYellow.rmax = atoi(argv[12]);
    ballYellow.gmin = atoi(argv[13]);
    ballYellow.gmax = atoi(argv[14]);
    ballYellow.bmin = atoi(argv[15]);
    ballYellow.bmax = atoi(argv[16]);

    ballWhite.rmin = atoi(argv[17]);
    ballWhite.rmax = atoi(argv[18]);
    ballWhite.gmin = atoi(argv[19]);
    ballWhite.gmax = atoi(argv[20]);
    ballWhite.bmin = atoi(argv[21]);
    ballWhite.bmax = atoi(argv[22]);

    bgBlue.rmin = atoi(argv[23]);
    bgBlue.rmax = atoi(argv[24]);
    bgBlue.gmin = atoi(argv[25]);
    bgBlue.gmax = atoi(argv[26]);
    bgBlue.bmin = atoi(argv[27]);
    bgBlue.bmax = atoi(argv[28]);
    
    
    // Check du dernier paramètre
    for (int k = 0; argv[29][k] != '\0'; k++) {
        if (argv[29][k] < '0' || argv[29][k] > '9') {
            fprintf(stderr, "ERREUR: Diamètre de boule invalide (caractère non-numérique détecté ou valeur négative saisie)\n");
            err = errBallLettre;
            return err;
        }
    }
    
    BallDiam = atoi(argv[29]);

    // Sortie des valeurs
    
    //printf("xmin = %d, xmax = %d, ymin = %d, ymax = %d\n",
           //rectInt.xmin, rectInt.xmax, rectInt.ymin, rectInt.ymax);

    
    //printf("Dernier paramètre = %d\n", BallDiam);

    // Ouverture du Pixmap
    FILE *fp = fopen("pixmap.bin", "rb"); // rb = read binary
    if (fp == NULL)
    {
        fprintf(stderr, "ERREUR: cannot open Pixmap.bin \n");
        perror("Erreur ouverture");
        err = errOuverture;
        return err;
    }
    
    // Lecture de largeur & hauteur
    unsigned int largeur = 0, hauteur = 0;

    size_t L = fread(&largeur, sizeof(unsigned int), 1, fp);
    if (L != 1)
    {
        fprintf(stderr, "ERREUR: missing/invalid width in Pixmap.bin\n");
        fclose(fp);
        err = errPixelsManquants;
        return err; // On sait qu'il manque déjà au moins 4 octets
    }

    size_t H = fread(&hauteur, sizeof(unsigned int), 1, fp);
    if (H != 1)
    {
        fprintf(stderr, "ERREUR: missing/invalid height in Pixmap.bin\n");
        fclose(fp);
        err = errPixelsManquants;
        return err; // On sait qu'il manque déjà au moins 4 octets
    }
    

    // Vérification des bornes :  dimensions comprises dans une certaine plage de valeurs
    if (largeur < 100 || largeur > 1000 || hauteur < 100 || hauteur > 1000)
    {
        fprintf(stderr, "ERREUR: image dimensions out of bounds [100..1000].\n");
        fclose(fp);
        err = errRectInvalide;
        return err;
    }


    if (rectInt.xmin < 0 || rectInt.ymin < 0)
    {
        fprintf(stderr, "ERREUR: coordonnées négatives interdites.\n");
        err = errRectNegatif;
        return err;
    }
    
 


    if (rectInt.xmin >= rectInt.xmax || rectInt.xmax > largeur || rectInt.ymin >= rectInt.ymax || rectInt.ymax > hauteur )
    {
        fprintf(stderr, "ERREUR: Rect intérieur invalide: xmin >= xmax ou ymin >= ymax.\n");
        err = errRectInvalide;
        return err;
    }
    
    // printf("Rectangle intérieur valide et contenu dans le billard.\n");

    // Vérification : Code RGB
    for (int i = 5; i <= 28; i++)
    {
        if (atoi(argv[i]) < 0 || atoi(argv[i]) > 255)
        {
            err = errColorRange;
            fprintf(stderr, "ERREUR: Le code RGB lu ne satisfait pas les normes. \n ");
            return err;
        }
    }
    
    //printf("Code RGB dans les normes. \n");
    
    // Vérification du diamètre de la boule : doit être dans [10..15]
    if (BallDiam < 10 || BallDiam > 15)
    {
        fprintf(stderr,
                "Erreur : Diametre de la boule invalide (%d). "
                "Valeur attendue dans [10..15].\n",
                BallDiam);
        err = errBallDiam;
        return err;
    }

 
// Étape 3: Allocation dynamique
    uint32_t *pixels = malloc(((largeur * hauteur) + 1) * sizeof(uint32_t));
    if (!pixels)
    {
        fprintf(stderr, "malloc failed");
        perror("malloc");
        fclose(fp);
        err = errMalloc;
        return err;
    }

    size_t n = fread(pixels, sizeof(uint32_t), (largeur * hauteur) + 1, fp);

    if (n < largeur * hauteur)
    {
        fprintf(stderr, "ERREUR: La taille du tableau est trop petite\n");
        err = errTropPetite;
        return err;
    }

//    if (n == largeur * hauteur)
//    {
//        printf("Le tableau a la bonne taille\n");        C'est juste un check
//    }

    if (n > largeur * hauteur)
    {
        fprintf(stderr,"ERREUR: La taille du tableau est trop grande\n");
        err = errTropGrande;
        return err;
    }

    

// Étape 4


    // Détéction des boules
    Result red = find_best_color(pixels, largeur, hauteur, rectInt, &ballRed,BallDiam);
    
    Result yellow = find_best_color(pixels, largeur, hauteur, rectInt, &ballYellow, BallDiam);
    
    Result white = find_best_color(pixels, largeur, hauteur, rectInt, &ballWhite, BallDiam);

    // Application du seuil minimal de score
    if (red.score < BALLMIN_SCORE)
        red = (Result){-1, -1, 0};
    if (yellow.score < BALLMIN_SCORE)
        yellow = (Result){-1, -1, 0};
    if (white.score < BALLMIN_SCORE)
        white = (Result){-1, -1, 0};

    // Vérification du nombre de boules trouvées
    int nbBoulesTrouvees = 0;
    if (red.score >= BALLMIN_SCORE)
        nbBoulesTrouvees++;
    if (yellow.score >= BALLMIN_SCORE)
        nbBoulesTrouvees++;
    if (white.score >= BALLMIN_SCORE)
        nbBoulesTrouvees++;

    // Warning : Cas où on ne voit pas 3 boules
    if (nbBoulesTrouvees < 3)
    {
        printf("Warning : seulement %d boule(s) trouvée(s) sur 3.\n",nbBoulesTrouvees);
       //aussi X = -1 Y = -1 Score = 0 pour la boule non trouvée
       
    }
    else
    {
        printf("All good, aucun Warning !");
    }
    
    // Affichage console
    //printf("\n RÉSULTATS DÉTECTION DES BALLES \n");
    //printf("Boule rouge   : X=%d  Y=%d  Score=%u\n", red.x, red.y, red.score);
    //printf("Boule jaune   : X=%d  Y=%d  Score=%u\n", yellow.x, yellow.y,yellow.score);
    //printf("Boule blanche : X=%d  Y=%d  Score=%u\n", white.x, white.y,white.score);

    // Création du fichier Pos.txt

    FILE *f = fopen("pos.txt", "w");
    if (f == NULL)
    {
        fprintf(stderr, "ERREUR: Création de Pos.txt échouée \n");
        perror("Erreur ouverture");
        err = errOuverture;
        return err;
    }
   
    
    // Affichage de la position et du score de chaque boule dans Pos.txt
    fprintf(f, "Red: %d, %d, %u\n", red.x, red.y, red.score);
    fprintf(f, "Yellow: %d, %d, %u\n", yellow.x, yellow.y, yellow.score);
    fprintf(f, "White: %d, %d, %u\n", white.x, white.y, white.score);

    fclose(f);
    fclose(fp);
    free(pixels);

    //printf("Fichier Pos.txt crée et rempli avec succès.\n");

    //printf("Fin du programme, mémoire libérée correctement.\n");
    
    return err;
    
    // S'il n'y a pas eu d'erreurs, err sera toujours égale à 0 et le code fonctionne bien.
}




// Version 26 December 10:40 PM
