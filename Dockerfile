FROM mcr.microsoft.com/quantum/iqsharp-base:0.11.2004.2825
ENV IQSHARP_HOSTING_ENV=sckaiser-azure-community-live

# Make sure the contents of our repo are in ${HOME}.
# These steps are required for use on mybinder.org.
USER root
COPY . ${HOME}
RUN chown -R ${USER} ${HOME}
RUN pip install rise

# Finish by dropping back to the notebook user.
USER ${USER}
