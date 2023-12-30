#include "monster.h"

extern s16 GetMonsterGender(s16 monster_id);

s16 Monster_FemaleToMaleForm(s16 monster_id)
{
    s16 gender = GetMonsterGender(monster_id);
    if (gender == 2 && monster_id >= 600)
    {
        s16 gender = GetMonsterGender(monster_id - 600);
        if (gender == 1)
        {
            return monster_id - 600;
        }
    }
    return monster_id;
}
