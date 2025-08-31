// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.List;

public class ParamsDefArrayUsertypeImported extends KaitaiStruct {

    public ParamsDefArrayUsertypeImported(KaitaiStream _io, List<HelloWorld> hwsParam) {
        this(_io, null, null, hwsParam);
    }

    public ParamsDefArrayUsertypeImported(KaitaiStream _io, KaitaiStruct _parent, List<HelloWorld> hwsParam) {
        this(_io, _parent, null, hwsParam);
    }

    public ParamsDefArrayUsertypeImported(KaitaiStream _io, KaitaiStruct _parent, ParamsDefArrayUsertypeImported _root, List<HelloWorld> hwsParam) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.hwsParam = hwsParam;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
    }
    private Integer hw0One;
    public Integer hw0One() {
        if (this.hw0One != null)
            return this.hw0One;
        this.hw0One = ((Number) (hwsParam().get(((int) 0)).one())).intValue();
        return this.hw0One;
    }
    private Integer hw1One;
    public Integer hw1One() {
        if (this.hw1One != null)
            return this.hw1One;
        this.hw1One = ((Number) (hwsParam().get(((int) 1)).one())).intValue();
        return this.hw1One;
    }
    private List<HelloWorld> hwsParam;
    private ParamsDefArrayUsertypeImported _root;
    private KaitaiStruct _parent;
    public List<HelloWorld> hwsParam() { return hwsParam; }
    public ParamsDefArrayUsertypeImported _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
