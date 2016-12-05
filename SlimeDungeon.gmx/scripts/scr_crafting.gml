///scr_crafting(item1,item2,item3,item4,item5,nItems)

/*
  overloaded script which can have up five items and has a 
  limiter for the amount in the crafting recipt. Also put out an output. 
  Possiblely using a txt based recipe list?
*/

//stores the output: either an item or null string.
result = ' ';

//stores items.
i1 = argument[0];
i2 = argument[1];
i3 = argument[2];
i4 = argument[3];
i5 = argument[4];

//DO NOT USE. WIP

switch(argument[5])
{
    case(1): //one item crafting
        if(i1 != null) // checker
        {
             
        }
        else result = 'null';
        break;
    case(2): //two item crafting
        if(i1 != null && i2 != null) // checker
        {
             
        }  
        else result = 'null';
        break;
    case(3): //three item crafting
         if(i1 != null && i2 != null && i3 != null) // checker
        {
             
        }  
        else result = 'null';
        break;
    case(4): //one item crafting
        if(i1 != null && i2 != null && i3 != null && i4 != null) // checker
        {
             
        }
        else result = 'null';
        break;
    case(5): //two item crafting
        if(i1 != null && i2 != null && i3 != null && i4 != null && i5 != null) // checker
        {
             
        }  
        else result = 'null';
        break;
    default:
        break;
}
