// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsParamsDefUsertypeImported extends KaitaiStruct {
    public static ImportsParamsDefUsertypeImported fromFile(String fileName) throws IOException {
        return new ImportsParamsDefUsertypeImported(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsParamsDefUsertypeImported(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsParamsDefUsertypeImported(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsParamsDefUsertypeImported(KaitaiStream _io, KaitaiStruct _parent, ImportsParamsDefUsertypeImported _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.hw = new HelloWorld(this._io);
        this.two = new ParamsDefUsertypeImported(this._io, hw());
    }
    private HelloWorld hw;
    private ParamsDefUsertypeImported two;
    private ImportsParamsDefUsertypeImported _root;
    private KaitaiStruct _parent;
    public HelloWorld hw() { return hw; }
    public ParamsDefUsertypeImported two() { return two; }
    public ImportsParamsDefUsertypeImported _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
