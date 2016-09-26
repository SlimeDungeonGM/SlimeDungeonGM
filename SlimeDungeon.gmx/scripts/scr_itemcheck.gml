///scr_itemcheck(int)

for(i=0;i < maxItems; i++)
{
    if(global.inventory[i] == argument0) //if slot "i" contains argument0;
    {
       return(1);  
    }
}
return(0);
