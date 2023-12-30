#ifndef PMDSKY_DG_H
#define PMDSKY_DG_H

#include "dungeon_mode.h"

// Checks if an entity pointer points to a valid entity (not entity type 0, which represents no entity).
// entity: entity pointer
// return: bool
u8 EntityIsValid__022E0354(struct entity *entity);

#endif //PMDSKY_DG_H
