//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @State var imagePickerVisible: Bool = false
    @State var selectedImage: Image? = Image(systemName: "photo")
    
    var body: some View {
        ZStack {
            selectedImage?
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button(action: {
                withAnimation {
                    self.imagePickerVisible.toggle()
                }
            }, label: {
                Text("Select an Image")
            })
            .padding()
            
            if imagePickerVisible {
                MyImagePicker(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
        }
    }
}

struct MyImagePicker: UIViewControllerRepresentable {
    @Binding var imagePickerVisible: Bool
    @Binding var selectedImage: Image?

    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        @Binding var imagePickerVisible: Bool
        @Binding var selectedImage: Image?
        
        init(imagePickerVisible: Binding<Bool>, selectedImage: Binding<Image?>) {
            _imagePickerVisible = imagePickerVisible
            _selectedImage = selectedImage
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
            selectedImage = Image(uiImage: image)
            imagePickerVisible = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            imagePickerVisible = false
        }
    }
}

//struct MyImagePicker_Previews: PreviewProvider {
//    static var previews: some View {
//        MyImagePicker()
//    }
//}
