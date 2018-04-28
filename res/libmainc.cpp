#include "libmain.h"
DLL_EXPORT void initStringResources()
{
    initStringResources__();
}

DLL_EXPORT void freeStringResources()
{
    freeStringResources__();
}

DLL_EXPORT const char* getStringById(unsigned int id)
{
    return getStringById__(id);
}


