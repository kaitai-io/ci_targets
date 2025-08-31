// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class CastToImported extends KaitaiStruct {

    public CastToImported(KaitaiStream _io, KaitaiStruct hwParam) {
        this(_io, null, null, hwParam);
    }

    public CastToImported(KaitaiStream _io, KaitaiStruct _parent, KaitaiStruct hwParam) {
        this(_io, _parent, null, hwParam);
    }

    public CastToImported(KaitaiStream _io, KaitaiStruct _parent, CastToImported _root, KaitaiStruct hwParam) {
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
    private Integer hwOne;
    public Integer hwOne() {
        if (this.hwOne != null)
            return this.hwOne;
        this.hwOne = ((Number) (((HelloWorld) (hwParam())).one())).intValue();
        return this.hwOne;
    }
    private KaitaiStruct hwParam;
    private CastToImported _root;
    private KaitaiStruct _parent;
    public KaitaiStruct hwParam() { return hwParam; }
    public CastToImported _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
