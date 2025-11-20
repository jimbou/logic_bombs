int logic_bomb(char* s) {
    int symvar = s[0] - 48;
    int i = symvar + 1;

    trigger(&symvar);  // deterministic +1

    while (symvar != i){
        symvar++;
        i++;
    }

    if (symvar == 13)
        return BOMB_ENDING;
    return NORMAL_ENDING;
}
