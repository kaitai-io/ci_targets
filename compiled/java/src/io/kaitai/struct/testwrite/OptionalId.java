// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class OptionalId extends KaitaiStruct.ReadWrite {
    public static OptionalId fromFile(String fileName) throws IOException {
        return new OptionalId(new ByteBufferKaitaiStream(fileName));
    }
    public OptionalId() {
        this(null, null, null);
    }

    public OptionalId(KaitaiStream _io) {
        this(_io, null, null);
    }

    public OptionalId(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public OptionalId(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, OptionalId _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._unnamed0 = this._io.readU1();
        this._unnamed1 = this._io.readU1();
        this._unnamed2 = this._io.readBytes(5);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeU1(this._unnamed0);
        this._io.writeU1(this._unnamed1);
        this._io.writeBytes(this._unnamed2);
    }

    public void _check() {
        if (this._unnamed2.length != 5)
            throw new ConsistencyError("_unnamed2", this._unnamed2.length, 5);
    }
    private int _unnamed0;
    private int _unnamed1;
    private byte[] _unnamed2;
    private OptionalId _root;
    private KaitaiStruct.ReadWrite _parent;
    public int _unnamed0() { return _unnamed0; }
    public void set_unnamed0(int _v) { _unnamed0 = _v; }
    public int _unnamed1() { return _unnamed1; }
    public void set_unnamed1(int _v) { _unnamed1 = _v; }
    public byte[] _unnamed2() { return _unnamed2; }
    public void set_unnamed2(byte[] _v) { _unnamed2 = _v; }
    public OptionalId _root() { return _root; }
    public void set_root(OptionalId _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
