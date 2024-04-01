// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NavParentRecursive extends KaitaiStruct {
    public static NavParentRecursive fromFile(String fileName) throws IOException {
        return new NavParentRecursive(new ByteBufferKaitaiStream(fileName));
    }

    public NavParentRecursive(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentRecursive(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NavParentRecursive(KaitaiStream _io, KaitaiStruct _parent, NavParentRecursive _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.value = this._io.readU1();
        if (value() == 255) {
            this.next = new NavParentRecursive(this._io, this, _root);
        }
    }
    private Integer parentValue;
    public Integer parentValue() {
        if (this.parentValue != null)
            return this.parentValue;
        if (value() != 255) {
            int _tmp = (int) (((NavParentRecursive) (_parent())).value());
            this.parentValue = _tmp;
        }
        return this.parentValue;
    }
    private int value;
    private NavParentRecursive next;
    private NavParentRecursive _root;
    private KaitaiStruct _parent;
    public int value() { return value; }
    public NavParentRecursive next() { return next; }
    public NavParentRecursive _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
