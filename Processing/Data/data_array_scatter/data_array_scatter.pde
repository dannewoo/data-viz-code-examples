// Data set as an array of numbers
int[] numbers = {
  341,262,274,271,396,380,277,225,384,410,494,294,326,260,322,253,365,292,276,323,438,633,507,295,289,271,293,258,311,316,247,276,281,309,400,332,408,429,525,448,503,474,485,521,575,626,696,341,281,254,262,218,252,211,217,239,273,288,335,317,306,390,333,256,336,327,254,305,341,417,449,258,278,242,248,211,270,275,232,190,236,311,352,344,367,311,368,321,370,368,395,378,442,570,756,319,284,264,333,268,347,311,305,289,322,348,432,265,271,314,364,239,295,298,244,218,271,395,437,252,173,168,201,181,249,245,198,190,244,279,391,324,367,376,521,467,373,432,474,417,523,702,674,365,333,272,249,264,353,328,258,230,380,434,426,272,302,211,291,262,285,270,239,315,349,483,584,325,257,227,227,209,247,230,199,197,205,319,364,330,381,378,464,397,515,536,446,460,552,641,658,341,367,297,346,349,327,351,317,273,415,439,420,299,321,254,304,238,344,304,345,265,454,486,599,310,289,266,227,255,346,309,291,234,260,353,348,320,410,397,489,325,365,398,400,415,499,699,1351,796,415,344,340,324,389,374,338,319,339,278,399,262,352,301,350,331,336,293,311,304,442,553,667,357,306,222,233,259,269,294,274,322,356,419,418,338,509,511,564,407,427,412,543,575,650,912,875,492,548,412,333,423,369,352,312,312,402,420,434,413,372,331,414,348,351,292,310,331,418,560,695,338,312,282,277,298,292,267,242,245,261,291,325,348,450,526,394,379,414,397,360,356,502,677,857,390,395,281,285,310,341,422,359,356,399,371,431,321,425,358,377,364,417,333,256,303,488,610,722,361,343,300,274,332,328,282,268,262,346,355,377,386
};

void setup() {
  size(600, 400);
  background(255);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noStroke();
  
  // Loop through all the numbers and create a bar for each number
  for (int i = 0; i < numbers.length; i++) {
    int n = numbers[i];
    // Map all the number values to fit to the stage size as well as color value
    float x = map(i, 0, numbers.length, 0, width);
    float h = map(n, 0, max(numbers), 0, height);
    float c = map(n, 0, max(numbers), 0, 360);
    float y = height - h;
    // Create a circle for each number
    fill(c, 100, 100);
    ellipse(x, y, 5, 5);
  }
}
