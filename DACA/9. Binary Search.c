#include<stdio.h>
int binary_search(int arr[],int S, int E, int element)
{
	int mid;
	while(S<=E){
		mid = (S+E)/2;
		if(arr[mid]==element)
			return mid;
		else if (arr[mid]>element)
			E=mid-1;
		else
			S=mid+1;
	}
		
}

int main()
{
	int n,index_value,i;
	printf("Enter Size of Array: ");
	scanf("%d",&n);

	int arr[n];
	int element;

	printf("Enter the elements of the array: ");
	for(i=0;i<n;i++)
	{
		scanf("%d",&arr[i]);
	}
	printf("Enter the elements you want to search: ");
	
	scanf("%d",&element);
	
	index_value=binary_search(arr, 0, n-1, element);
	printf("The position of the element in the array is %d", index_value);
	
}
