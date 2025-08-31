// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;
import io.kaitai.struct.ConsistencyError;

public class ValidOptionalId extends KaitaiStruct.ReadWrite {
    public static ValidOptionalId fromFile(String fileName) throws IOException {
        return new ValidOptionalId(new ByteBufferKaitaiStream(fileName));
    }
    public ValidOptionalId() {
        this(null, null, null);
    }

    public ValidOptionalId(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidOptionalId(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidOptionalId(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidOptionalId _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._unnamed0 = this._io.readBytes(6);
        if (!(Arrays.equals(this._unnamed0, new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, this._unnamed0, this._io, "/seq/0");
        }
        this._unnamed1 = this._io.readU1();
        if (!(this._unnamed1 == 255)) {
            throw new KaitaiStream.ValidationNotEqualError(255, this._unnamed1, this._io, "/seq/1");
        }
        this._unnamed2 = this._io.readS1();
        {
            byte _it = this._unnamed2;
            if (!(_it == -1)) {
                throw new KaitaiStream.ValidationExprError(this._unnamed2, this._io, "/seq/2");
            }
        }
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytes(this._unnamed0);
        this._io.writeU1(this._unnamed1);
        this._io.writeS1(this._unnamed2);
    }

    public void _check() {
        if (this._unnamed0.length != 6)
            throw new ConsistencyError("_unnamed0", this._unnamed0.length, 6);
        if (!(Arrays.equals(this._unnamed0, new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, this._unnamed0, null, "/seq/0");
        }
        if (!(this._unnamed1 == 255)) {
            throw new KaitaiStream.ValidationNotEqualError(255, this._unnamed1, null, "/seq/1");
        }
        {
            byte _it = this._unnamed2;
            if (!(_it == -1)) {
                throw new KaitaiStream.ValidationExprError(this._unnamed2, null, "/seq/2");
            }
        }
    }
    private byte[] _unnamed0;
    private int _unnamed1;
    private byte _unnamed2;
    private ValidOptionalId _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] _unnamed0() { return _unnamed0; }
    public void set_unnamed0(byte[] _v) { _unnamed0 = _v; }
    public int _unnamed1() { return _unnamed1; }
    public void set_unnamed1(int _v) { _unnamed1 = _v; }
    public byte _unnamed2() { return _unnamed2; }
    public void set_unnamed2(byte _v) { _unnamed2 = _v; }
    public ValidOptionalId _root() { return _root; }
    public void set_root(ValidOptionalId _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
