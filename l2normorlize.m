classdef l2normorlize < nnet.layer.Layer

   
    methods
        function layer = l2normorlize(alpha)
            % (Optional) Create a myLayer
            % This function must have the same name as the layer

           layer.Name = 'l2';
           layer.Description = ['l2 normorlize with',alpha,'schaling coffiecient'];
            
        end
        
        function Z = predict(layer, X)
            % Forward input data through the layer at prediction time and
            % output the result
            %
            % Inputs:
            %         layer    -    Layer to forward propagate through
            %         X        -    Input data
            % Output:
            %         Z        -    Output of layer forward function
            
           Z = ( alpha * X)/norm(X);
         
        end

       

        function [dLdX, dLdW1, …, dLdWn] = backward(layer, X, Z, dLdZ, memory)
            % Backward propagate the derivative of the loss function through 
            % the layer
            %
            % Inputs:
            %         layer             - Layer to backward propagate through
            %         X                 - Input data
            %         Z                 - Output of layer forward function            
            %         dLdZ              - Gradient propagated from the deeper layer
            %         memory            - Memory value which can be used in
            %                             backward propagation
            % Output:
            %         dLdX              - Derivative of the loss with respect to the
            %                             input data
            %         dLdW1, ..., dLdWn - Derivatives of the loss with respect to each
            %                             learnable parameter
            
            % Layer backward function goes here
        end
    end
end