// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ParamsDefUsertypeImported extends KaitaiStruct {

    public ParamsDefUsertypeImported(KaitaiStream _io, HelloWorld hwParam) {
        this(_io, null, null, hwParam);
    }

    public ParamsDefUsertypeImported(KaitaiStream _io, KaitaiStruct _parent, HelloWorld hwParam) {
        this(_io, _parent, null, hwParam);
    }

    public ParamsDefUsertypeImported(KaitaiStream _io, KaitaiStruct _parent, ParamsDefUsertypeImported _root, HelloWorld hwParam) {
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
    public Integer hwOne() {
        if (this.hwOne != null)
            return this.hwOne;
        this.hwOne = ((Number) (hwParam().one())).intValue();
        return this.hwOne;
    }
    public HelloWorld hwParam() { return hwParam; }
    public ParamsDefUsertypeImported _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integer hwOne;
    private HelloWorld hwParam;
    private ParamsDefUsertypeImported _root;
    private KaitaiStruct _parent;
}
