��          �               �  !   �  #   �     �       +   !  }   M  y   �  5   E  N   {     �      �     �       �   0  ~   �    5     H    c     e     �     �  �   �  ,   �     �  u  �  !   L
  #   n
     �
     �
  +   �
  }   �
  y   j  5   �  N        i      p     �     �  �   �  ~   U    �     �              #     B  �   U  ,   A     n   And the header for vertex Shader: Create a vertex or fragment shader. Fragment shader source code. Header inclusion Here is the header for the fragment Shader: If you set a new fragment shader code source, it will be automatically compiled and will replace the current fragment shader. If you set a new vertex shader code source, it will be automatically compiled and will replace the current vertex shader. Include more complete documentation about the shader. Indicate whether the shader loaded successfully and is ready for usage or not. Shader Single file glsl shader programs Source code for fragment shader Source code for vertex shader The :class:`Shader` class handles the compilation of the vertex and fragment shader as well as the creation of the program in OpenGL. The source property of the Shader should be set to the filename of a glsl shader file (of the above format), e.g. `phong.glsl` To simplify shader management, the vertex and fragment shaders can be loaded automatically from a single glsl source file (plain text). The file should contain sections identified by a line starting with '---vertex' and '---fragment' respectively (case insensitive), e.g. :: Vertex shader source code. When you are creating a Shader, Kivy will always include default parameters. If you don't want to rewrite this each time you want to customize / write a new shader, you can add the "$HEADER$" token and it will be replaced by the corresponding shader header. `fs`: string, defaults to None `vs`: string, defaults to None glsl  source code. source should be the filename of a glsl shader that contains both the vertex and fragment shader sourcecode, each designated by a section header consisting of one line starting with either "--VERTEX" or "--FRAGMENT" (case insensitive). ベースクラス: :class:`builtins.object` 課題 Project-Id-Version: Kivy 1.10.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-05-13 08:22+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 And the header for vertex Shader: Create a vertex or fragment shader. Fragment shader source code. Header inclusion Here is the header for the fragment Shader: If you set a new fragment shader code source, it will be automatically compiled and will replace the current fragment shader. If you set a new vertex shader code source, it will be automatically compiled and will replace the current vertex shader. Include more complete documentation about the shader. Indicate whether the shader loaded successfully and is ready for usage or not. Shader Single file glsl shader programs Source code for fragment shader Source code for vertex shader The :class:`Shader` class handles the compilation of the vertex and fragment shader as well as the creation of the program in OpenGL. The source property of the Shader should be set to the filename of a glsl shader file (of the above format), e.g. `phong.glsl` To simplify shader management, the vertex and fragment shaders can be loaded automatically from a single glsl source file (plain text). The file should contain sections identified by a line starting with '---vertex' and '---fragment' respectively (case insensitive), e.g. :: Vertex shader source code. When you are creating a Shader, Kivy will always include default parameters. If you don't want to rewrite this each time you want to customize / write a new shader, you can add the "$HEADER$" token and it will be replaced by the corresponding shader header. `fs`: string, defaults to None `vs`: string, defaults to None glsl  source code. source should be the filename of a glsl shader that contains both the vertex and fragment shader sourcecode, each designated by a section header consisting of one line starting with either "--VERTEX" or "--FRAGMENT" (case insensitive). ベースクラス: :class:`builtins.object` 課題 