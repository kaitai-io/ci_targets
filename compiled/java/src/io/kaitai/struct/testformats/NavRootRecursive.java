// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NavRootRecursive extends KaitaiStruct {
    public static NavRootRecursive fromFile(String fileName) throws IOException {
        return new NavRootRecursive(new ByteBufferKaitaiStream(fileName));
    }

    public NavRootRecursive(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavRootRecursive(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NavRootRecursive(KaitaiStream _io, KaitaiStruct _parent, NavRootRecursive _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.value = this._io.readU1();
        if (value() == 255) {
            this.next = new NavRootRecursive(this._io);
        }
    }
    private Integer rootValue;
    public Integer rootValue() {
        if (this.rootValue != null)
            return this.rootValue;
        int _tmp = (int) (_root().value());
        this.rootValue = _tmp;
        return this.rootValue;
    }
    private int value;
    private NavRootRecursive next;
    private NavRootRecursive _root;
    private KaitaiStruct _parent;
    public int value() { return value; }
    public NavRootRecursive next() { return next; }
    public NavRootRecursive _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
