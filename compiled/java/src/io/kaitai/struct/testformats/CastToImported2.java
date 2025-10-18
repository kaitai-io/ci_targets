// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class CastToImported2 extends KaitaiStruct {

    public CastToImported2(KaitaiStream _io, KaitaiStruct hwParam) {
        this(_io, null, null, hwParam);
    }

    public CastToImported2(KaitaiStream _io, KaitaiStruct _parent, KaitaiStruct hwParam) {
        this(_io, _parent, null, hwParam);
    }

    public CastToImported2(KaitaiStream _io, KaitaiStruct _parent, CastToImported2 _root, KaitaiStruct hwParam) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.hwParam = hwParam;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
    }
    public HelloWorld hw() {
        if (this.hw != null)
            return this.hw;
        this.hw = ((HelloWorld) (hwParam()));
        return this.hw;
    }
    public KaitaiStruct hwParam() { return hwParam; }
    public CastToImported2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private HelloWorld hw;
    private KaitaiStruct hwParam;
    private CastToImported2 _root;
    private KaitaiStruct _parent;
}
