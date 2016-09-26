///scr_itemdrop(int)

for(i=0;i < maxItems; i++)
{
    if(global.inventory[i] == argument0) //if slot "i" contain argument0;
    {
       global.inventory[i] = -1; 
       return(1);  
    }
}
return(0);
