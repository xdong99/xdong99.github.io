---
layout: post
title: Data-Driven Stochastic Closure Modeling via Conditional Diffusion Model and Neural Operator
date: 2024-04-27 15:01:00
description: X. Dong, C. Chen, J.-L. Wu，arXiv preprint arXiv:2408.02965
tags: research math generative code videos diffusion
categories: Generative-Models
---
<div class="row mt-3">
    <div class="col-12 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/posts/2024-04-27-project-videos/Schematic.jpg" class="img-fluid rounded z-depth-1" %}
        <div class="caption">
            Schematic plot of the entire workflow. <br>
        </div>
    </div>
</div>

Closure models are widely used in simulating complex multiscale dynamical systems such as turbulence and the earth system, for which direct numerical simulation that resolves all scales is often too expensive. For those systems without a clear scale separation, deterministic and local closure models often lack enough generalization capability, which limits their performance in many real-world applications. In this work, we propose a data-driven modeling framework for constructing stochastic and non-local closure models via conditional diffusion model and neural operator. Specifically, the Fourier neural operator is incorporated into a score-based diffusion model, which serves as a data-driven stochastic closure model for complex dynamical systems governed by partial differential equations (PDEs). We also demonstrate how accelerated sampling methods can improve the efficiency of the data-driven stochastic closure model. The results show that the proposed methodology provides a systematic approach via generative machine learning techniques to construct data-driven stochastic closure models for multiscale dynamical systems with continuous spatiotemporal fields.

<div class="row mt-3">
    <div class="col-12 mt-3 mt-md-0">
        <!-- Video tag for responsive video playback -->
        <video playsinline autoplay loop muted id="myVideo" class="img-fluid rounded z-depth-1">
            <source src="assets/video/Animation3050WithAndWithoutG.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <div class="caption">
            Animations of the true vorticity field, and the simulation vorticity with and without G from 30s to 50s. <br>
        </div>
    </div>
</div>

<!-- [//]: # (<div class="row mt-3">)

[//]: # (    <div class="col-12 mt-3 mt-md-0">)

[//]: # (        {% include video.liquid path="assets/video/Animation3050Final.mp4" class="img-fluid rounded z-depth-1" controls=true %})

[//]: # (        <div class="caption">)

[//]: # (            Animations of the true vorticity field and simulated vorticity field from 30s to 50s. <br>)

[//]: # (            Left: true vorticity. Right: simulated vorticity.)

[//]: # (        </div>)

[//]: # (    </div>)

[//]: # (</div>) -->

