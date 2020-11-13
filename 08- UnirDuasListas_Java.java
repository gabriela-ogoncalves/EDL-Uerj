// Função genérica para concatenar múltiplas listas em Java
public static<T> List<T> concatenate(List<T>... lists)
{
	List<T> result = new ArrayList<>();

	for (List<T> l: lists)
		result.addAll(l);

	return result;
}