// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EnumToIClassBorder2 extends KaitaiStruct {

    public EnumToIClassBorder2(KaitaiStream _io, EnumToIClassBorder1 parent) {
        this(_io, null, null, parent);
    }

    public EnumToIClassBorder2(KaitaiStream _io, KaitaiStruct _parent, EnumToIClassBorder1 parent) {
        this(_io, _parent, null, parent);
    }

    public EnumToIClassBorder2(KaitaiStream _io, KaitaiStruct _parent, EnumToIClassBorder2 _root, EnumToIClassBorder1 parent) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.parent = parent;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
    }
    public Boolean isDog() {
        if (this.isDog != null)
            return this.isDog;
        this.isDog = parent().someDog().id() == 4;
        return this.isDog;
    }
    public EnumToIClassBorder1 parent() { return parent; }
    public EnumToIClassBorder2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Boolean isDog;
    private EnumToIClassBorder1 parent;
    private EnumToIClassBorder2 _root;
    private KaitaiStruct _parent;
}
