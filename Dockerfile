FROM klakegg/hugo:alpine-onbuild as build

FROM nginx:alpine
COPY --from=build /onbuild /usr/share/nginx/html

