public class spirograph {
	public static void main(String args[]) {
		double R = 5.0;
		double r = 1.0;
		double a = 4.0;
		double x1 = R + r - a;
		double y1 = 0;
		double pie = Math.PI;
		int nReverse = 10;
		for(double t = 0.0; t < (pie*nReverse); t+=0.01) {
			double x2 = (R+r)*Math.cos((r/R)*t) - a*Math.cos((1+r/R)*t);
			double y2 = (R+r)*Math.sin((r/R)*t) - a*Math.sin((1+r/R)*t);
			
			//SGM's co-ordinate : 34.0212453,-118.2913436
			double p1 = -118.2913436;
			double p2 = 34.0212453;
			System.out.print(x2+p1+",");
			System.out.println(y2+p2+",");
		}
	}
}