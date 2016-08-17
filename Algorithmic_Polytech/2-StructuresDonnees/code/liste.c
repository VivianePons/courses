#include <stdio.h>
#include <stdlib.h>


typedef struct c{
    int valeur;
    struct c *suivante;
}Cellule;

typedef Cellule * Liste;

Cellule * creeCellule(int valeur) {
    Cellule * c = malloc(sizeof(Cellule));
    if(c == NULL) {
        exit(0);
    }
    c-> valeur = valeur;
    c-> suivante = NULL;
    return c;
}
void afficheListe(Liste L) {
    Cellule *c = L;
    while(c!=NULL) {
        printf("%d\n", c->valeur);
        c = c->suivante;
    }

}
void ajouteEnTete(Liste *L, Cellule * c) {
    c->suivante = *L;
    *L = c;
}

int main(void) {
    Cellule *c1 = creeCellule(1);
    Cellule *c2 = creeCellule(2);
    Liste L = NULL;
    ajouteEnTete(&L,c2);
    ajouteEnTete(&L,c1);
    afficheListe(L);

}
