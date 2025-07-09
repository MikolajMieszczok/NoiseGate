#pragma once
//x - bitmapa
//y - ilosc wátków
//z - tablica przechowująca wielkość podtablic
void calculate_optimal_sizes(std::vector<float>& b, int y, std::vector<int>& z)
{
	int x = b.size();
	int c = x / y;
	int reszta_z_c = x % y;
	for (int i = 0; i < y; ++i) 
	{
		std::cout << c << "  " << reszta_z_c << std::endl;
		z.push_back(c + (reszta_z_c > 0 ? 1 : 0));
		if (reszta_z_c > 0)
			reszta_z_c--;
	}
}