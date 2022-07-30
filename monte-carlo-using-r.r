{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "8b6bd23e",
   "metadata": {
    "papermill": {
     "duration": 0.003118,
     "end_time": "2022-07-30T14:38:17.453049",
     "exception": false,
     "start_time": "2022-07-30T14:38:17.449931",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "This notebook is work in progress and will keep adding more and more concepts as I find them along my self learning."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1a5f0703",
   "metadata": {
    "papermill": {
     "duration": 0.002688,
     "end_time": "2022-07-30T14:38:17.458833",
     "exception": false,
     "start_time": "2022-07-30T14:38:17.456145",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> Trying out some probabilistic visualization "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "34006b0f",
   "metadata": {
    "papermill": {
     "duration": 0.001839,
     "end_time": "2022-07-30T14:38:17.462496",
     "exception": false,
     "start_time": "2022-07-30T14:38:17.460657",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Credit goes to Introduction to Probability with R"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "527528d1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-30T14:38:17.471316Z",
     "iopub.status.busy": "2022-07-30T14:38:17.468193Z",
     "iopub.status.idle": "2022-07-30T14:38:17.592319Z",
     "shell.execute_reply": "2022-07-30T14:38:17.590723Z"
    },
    "papermill": {
     "duration": 0.130836,
     "end_time": "2022-07-30T14:38:17.595107",
     "exception": false,
     "start_time": "2022-07-30T14:38:17.464271",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "p <- 18/38\n",
    "q <- 1-p\n",
    "\n",
    "\n",
    "n<- 100\n",
    "c <- 50\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "c8179ce7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-30T14:38:17.631571Z",
     "iopub.status.busy": "2022-07-30T14:38:17.600414Z",
     "iopub.status.idle": "2022-07-30T14:38:17.646660Z",
     "shell.execute_reply": "2022-07-30T14:38:17.645260Z"
    },
    "papermill": {
     "duration": 0.051945,
     "end_time": "2022-07-30T14:38:17.649061",
     "exception": false,
     "start_time": "2022-07-30T14:38:17.597116",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "m <- matrix(0,n+1,n+1)\n",
    "for (i in 2:n){\n",
    "    m[i,i+1] <- q\n",
    "    m[i,i+1] <- p\n",
    "}"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "4786d075",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-30T14:38:17.655426Z",
     "iopub.status.busy": "2022-07-30T14:38:17.654220Z",
     "iopub.status.idle": "2022-07-30T14:38:17.669216Z",
     "shell.execute_reply": "2022-07-30T14:38:17.667861Z"
    },
    "papermill": {
     "duration": 0.020477,
     "end_time": "2022-07-30T14:38:17.671491",
     "exception": false,
     "start_time": "2022-07-30T14:38:17.651014",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "m[1,1] <- 1\n",
    "m[n+1,n+1] <- 1"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "47558ecb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-30T14:38:17.677657Z",
     "iopub.status.busy": "2022-07-30T14:38:17.676460Z",
     "iopub.status.idle": "2022-07-30T14:39:07.665820Z",
     "shell.execute_reply": "2022-07-30T14:39:07.663233Z"
    },
    "papermill": {
     "duration": 50.001191,
     "end_time": "2022-07-30T14:39:07.674548",
     "exception": false,
     "start_time": "2022-07-30T14:38:17.673357",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nO3deZyVZd348evMyrDOMIBsioIIKGHmMpgrGoIaSGUaGmmJaaBgaWUuof3UtFxy\nAR/3FAPT1ESb8kmDRBEzNwyFEAFTB5QdYfY5vz8wHkUcBmXmnnPxfv/xvGbuczl9n+tWXh/u\nM/d9Uul0OgAAkPmykh4AAIDtQ9gBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARCIn6QEywJo1a+6+++7y8vKkBwEAmoWCgoJTTjmlXbt2SQ+yOWG3db/73e/Gjx+f\n9BQAQDOSk5MzZsyYpKfYnLDbuurq6hDCHXfcsffeeyc9CwCQsFdeeeW0007bmAfNjbBrqD59\n+uy7775JTwEAJKyioiLpET6VmycAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAikamPO1lV\ntmj+/AXLVq5dv6Eip0WrdsWde/ft17NLYdJzAQAkJsPCLl275v7rLr3hjimz5i375Kud+w48\nafT4i8efWJiTavrZAACSlUlhV1v1znf333vynBXZue1Ljhg+oF+vLh0K8/NzaiorVy9fumTB\n3Fkzn7v2vJH3THnslWfv6ZrnXWYAYMeSSWH37LlDJ89ZcfBZ10+9ckz3VluYvK5qxdSrxo6a\nMGXw2aPn3nJ4kw8IAJCkTLqsdcHkBa27nDnzxnFbrLoQQlZe8ckX33dzyU4L77uoiWcDAEhc\nJoXdq+urW+8ybKvL9j20U/WGuU0wDwBAs5JJYXdcccGqeVcuraqrb1Fd+Z33L25RNKSphgIA\naC4yKewuvGpI5ZqZ/QeecO/jL6yvTW/+crrytZkPjx7c7+bFaw+fMCGJAQEAkpRJN0/0PuWB\n254/6oxJD40a+mB2XruevXt17ViYn59bW1W5ZnnZmwsWrqyoSaVSg8ZMnDa2X9LDAgA0tUwK\nuxCyRt/0xNGj/jjxrqml02fPe/2lBXM/vG6Xysrv3muvwYOGjBw97rj9uyU7JQBAIjIr7EII\noVvJiCtKRlwRQrqmfPXqdevLq/IKWrYpLCrwUGIAYMeWeWG3SSqnoKhDQVHSYwAANBOZdPME\nAAD1yOArdltUtfaZHn2ODyGUlZU1ZH1tbW1paWlFRUU9a1566aUQQnV19XaZEACgkcQWdul0\n1dKlSxu+fvr06cOHD2/IyilTphx++OGfcSwAgMYXW9jltd5v9uzZDV8/aNCgadOm1X/FbtKk\nSTNmzOjevfvnng4AoBHFFnap7DYlJSUNX5+dnT1s2FY+pqy0tDSEkJXl9xEBgGZNrAAARELY\nAQBEQtgBAEQik37HbvXSsvW1dQ1c3K2bDxYDAHYsmRR2P95nj9uXftDAxel0ulGHAQBobjIp\n7C574s99fjvx59f9vrw2XfSFww/q0TrpiQAAmpFMCrud9jr4vF8fPKj9m/td8I9+Y29+9Iy+\nSU8EANCMZN7NE18Ye03SIwAANEeZF3Z5bQ/+UvfO7VpkJz0IAEDzkklvxW7ywn/Kkh4BAKDZ\nybwrdgAAbJGwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiERO0gNsB7Xl7/zxgdI33lnVfud+R33t6B6tYvh/CgBgW2XYFbtVcx8Zdexh\nPYpbFnXZY+w1T4YQlv/zzn6deh5/yvfPv+Cn3x81vHen3Sf8YX7SYwIAJCCTLm5tWPanL+z7\njXcqawuKu+WsWDjpvK+Ud/7fl8/8wZvVHX/wsx/s16fjW6/OuvGGyZd960s7v7F09K5tkp4X\nAKBJZVLYTfv2me9W1Z0/9cVffmufuqr3fjFiv0u/fVR2bodHFs47dufWIYQQvn/OaUd26X/K\nxSc9NHrWKQmPCwDQtDLprdhfPvtem10u/uW39gkhZOV1+unk34QQOh0w6b9VF0IIhf1G/ap3\n0Yo51yQ2JQBAQjIp7BZW1LTcaf9N3+a3PSSE0G7Pbpst67tzq9qKRU06GQBAM5BJYXdQ27y1\niybX/vfbtYvuDCG89/TszZY9+vrqvDYHNO1oAADJy6Swu/jkXhvev3/Q2Oufn/vGP2c8eNJR\nl+cUtFs17ycX/WHOpjV/v+V7N76zbuevnp/gnAAAicikmycOvLp0eOkXpk0654BJ54QQsnLb\n3zJn7tPH9r38m3s//OXB+/bp9J9Xn57xzyV5rfvfO+mwpIcFAGhqmRR22fm7PPTa63ffeOtT\nz72wLrfrt3542Tf7djzl5ZnhuBPunv7X12aFEELPg06ceO/tB7TJS3pYAICmlklhF0LIzu/6\nvfMu+d5HjuS2+cJv//b61UvmL3h7dVH3Pn17FCY2HABAojIs7D5Nhx59OvRIeggAgERFEnaf\nWW1tbWlpaUVFRT1rFi9eHEKoq6tropkAAD6T2MKuau0zPfocH0IoKytryPrp06cPHz68ISsX\nLfJsPACgWYst7NLpqqVLlzZ8/aBBg6ZNm1b/FbtJkybNmDFjt912+9zTAQA0otjCLq/1frNn\nb/7I4npkZ2cPGzas/jWlpaUhhKysTHrmHwCwA4ot7FLZbUpKSpKeAgAgAZkadqvKFs2fv2DZ\nyrXrN1TktGjVrrhz7779enbxrBMAYMeVYWGXrl1z/3WX3nDHlFnzln3y1c59B540evzF408s\nzEk1/WwAAMnKpLCrrXrnu/vvPXnOiuzc9iVHDB/Qr1eXDoX5+Tk1lZWrly9dsmDurJnPXXve\nyHumPPbKs/d0zfMrcQDAjiWTwu7Zc4dOnrPi4LOun3rlmO6ttjB5XdWKqVeNHTVhyuCzR8+9\n5fAmHxAAIEmZdFnrgskLWnc5c+aN47ZYdSGErLziky++7+aSnRbed1ETzwYAkLhMCrtX11e3\n3mUrjyYJIex7aKfqDXObYB4AgGYlk8LuuOKCVfOuXFpV70d71ZXfef/iFkVDmmooAIDmIpPC\n7sKrhlSumdl/4An3Pv7C+tr05i+nK1+b+fDowf1uXrz28AkTkhgQACBJmXTzRO9THrjt+aPO\nmPTQqKEPZue169m7V9eOhfn5ubVVlWuWl725YOHKippUKjVozMRpY/slPSwAQFPLpLALIWv0\nTU8cPeqPE++aWjp99rzXX1ow98Prdqms/O699ho8aMjI0eOO279bslMCACQis8IuhBC6lYy4\nomTEFSGka8pXr163vrwqr6Blm8KiAg8lBgB2bJkXdpukcgqKOhQUJT0GAEAzkUk3TwAAUA9h\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQiZykB/gM0u//\n54OOO7f577d1r/z9T0+98NoHdfm77bn/MUO+3DY7leR0AAAJybCwW/y/k74z7udz079eMf+7\nIYTy9/7+7SEnPvTysk0LWnb50rVTHzvjsC7JzQgAkIxMCrvlL13T7+gfV6VaDT5t5xBCunbd\nifsc++i76wccfeoJR+7XvW3dv55//KY7SscO3rto8aITurZKel4AgCaVSWF304mXV6Va3j77\nze/u1zGEUPb06EffXf+lnzz2wlXHfrji9LN/fNrEXb589jknPnTCzFFJzgoA0OQy6eaJiYvX\nFu1x/caqCyEsnjInhHDHz4/66JpOJWOv6dN++YtXJjAfAECiMins2udkZedvumciZOVlhRB2\nyd/8omPPji1qq8qadDIAgGYgk8LunL2KVr7+4+fWVG38tteph4QQfvHCex9dk65ZdfnLywuK\nv5rAfAAAicqksDvpd5fn1vzniH5HTHxw5pqauo77TvzxQZ3/Z8hX75rx5sYFG8qe/+HwfZ5Z\nW3nYz3+W7KgAAE0vk26eaLfH6JceePeIkb846/hDx+cX7t53j87tulau+ef3BvUa13GX7q0q\nFyx5rzadPuj03zzyg35JDwsA0NQy6YpdCKHP137+Ztmcay8a++W+nd59/YW/P/XixuMfvP9W\nWXmLI084Y/KMN56+dXyORxQDADueTLpit1F+0Z4//H83/fD/hZCuXrl8+fry6uy8Fq1aF7Vr\nnZv0aAAAScq8sPs/qdz2Hbu0T3oKAIBmIpPDbnuora0tLS2tqKioZ83ixYtDCHV1dU00EwDA\nZxJb2FWtfaZHn+NDCGVlDXqU3fTp04cPH96QlYsWLfpckwEANLLYwi6drlq6dGnD1w8aNGja\ntGn1X7GbNGnSjBkzdtttt889HQBAI4ot7PJa7zd79uyGr8/Ozh42bFj9a0pLS0MIWVkZdgcx\nALCjiS3sUtltSkpKkp4CACABmRp2q8oWzZ+/YNnKtes3VOS0aNWuuHPvvv16dilMei4AgMRk\nWNila9fcf92lN9wxZda8ZZ98tXPfgSeNHn/x+BMLPaEYANjxZFLY1Va989399548Z0V2bvuS\nI4YP6NerS4fC/PycmsrK1cuXLlkwd9bM5649b+Q9Ux575dl7uub5lTgAYMeSSWH37LlDJ89Z\n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\nAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "x <- matrix(0,1,n+1)\n",
    "for (i in 1:2000) {\n",
    "    x <- x%*% m\n",
    "    plot((1:(n+1))[x>0],x[x>0],xlim=c(1,n+1),ylim=c(0,1),xlab=\"n\",ylab=\"P(X=n)\")\n",
    "}"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 53.37521,
   "end_time": "2022-07-30T14:39:07.797841",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-07-30T14:38:14.422631",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
