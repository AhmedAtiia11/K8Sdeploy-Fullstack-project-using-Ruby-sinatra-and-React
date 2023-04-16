# K8Sdeploy-with-Fullstack-project-using-Ruby-sinatra-and-React



## To test connection locally run backend part then frontend to test connection

# Run Back end 
```
cd backend
bundle install
ruby server.rb -o 0.0.0.0 -p 5000
```
```
curl 0.0.0.0:5000/health
```
it should return output with {msg:healthy} at JSON fromat
# Run Front end 
```
cd frontend
npm install -g serve
serve -s build
```
open your browser at localhost:3000

#### At this step you should see it's Online but it's hosted locally so to host it at K8s deployment 

# create Docker images part
```
cd backend
docker build -t <dockerhubusername/imagename> .

cd ../frontend
docker build -t <dockerhubusername/imagename> .

```
# Deploy the project at Kubernetes Deployment
```
kubectl apply -f kubernetes/Deployment-back-end.yaml
kubectl apply -f kubernetes/Deployment-react-nginx.yaml
```
Then run service to connect between them
```
kubectl apply -f kubernetes/Deployment-back-end.yaml
kubectl apply -f kubernetes/Deployment-back-end.yaml
```
open your browser at localhost:30003 and you should see it online


