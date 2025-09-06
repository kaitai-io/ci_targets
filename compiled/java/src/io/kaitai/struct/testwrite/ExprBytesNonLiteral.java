// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprBytesNonLiteral extends KaitaiStruct.ReadWrite {
    public static ExprBytesNonLiteral fromFile(String fileName) throws IOException {
        return new ExprBytesNonLiteral(new ByteBufferKaitaiStream(fileName));
    }
    public ExprBytesNonLiteral() {
        this(null, null, null);
    }

    public ExprBytesNonLiteral(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprBytesNonLiteral(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprBytesNonLiteral(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprBytesNonLiteral _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        this.two = this._io.readU1();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.one);
        this._io.writeU1(this.two);
    }

    public void _check() {
        _dirty = false;
    }
    private byte[] calcBytes;
    public byte[] calcBytes() {
        if (this.calcBytes != null)
            return this.calcBytes;
        this.calcBytes = new byte[] { one(), two() };
        return this.calcBytes;
    }
    public void _invalidateCalcBytes() { this.calcBytes = null; }
    private int one;
    private int two;
    private ExprBytesNonLiteral _root;
    private KaitaiStruct.ReadWrite _parent;
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public int two() { return two; }
    public void setTwo(int _v) { _dirty = true; two = _v; }
    public ExprBytesNonLiteral _root() { return _root; }
    public void set_root(ExprBytesNonLiteral _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
