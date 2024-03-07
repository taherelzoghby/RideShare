String convertMeterToKm(int meter){
  if(meter<1000){
    return '$meter m';
  }
  return '${meter/1000} km';
}