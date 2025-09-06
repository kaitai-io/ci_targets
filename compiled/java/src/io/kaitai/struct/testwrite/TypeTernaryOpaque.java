// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class TypeTernaryOpaque extends KaitaiStruct.ReadWrite {
    public static TypeTernaryOpaque fromFile(String fileName) throws IOException {
        return new TypeTernaryOpaque(new ByteBufferKaitaiStream(fileName));
    }
    public TypeTernaryOpaque() {
        this(null, null, null);
    }

    public TypeTernaryOpaque(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TypeTernaryOpaque(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TypeTernaryOpaque(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TypeTernaryOpaque _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        if (!(isHack())) {
            this._raw_difWoHack = this._io.readBytes(1);
            KaitaiStream _io__raw_difWoHack = new ByteBufferKaitaiStream(this._raw_difWoHack);
            this.difWoHack = new HelloWorld(_io__raw_difWoHack);
            this.difWoHack._read();
        }
        if (isHack()) {
            this._raw__raw_difWithHack = this._io.readBytes(1);
            this._raw_difWithHack = KaitaiStream.processXor(this._raw__raw_difWithHack, ((byte) 3));
            KaitaiStream _io__raw_difWithHack = new ByteBufferKaitaiStream(this._raw_difWithHack);
            this.difWithHack = new HelloWorld(_io__raw_difWithHack);
            this.difWithHack._read();
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        if (!(isHack())) {
            this.difWoHack._fetchInstances();
        }
        if (isHack()) {
            this.difWithHack._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        if (!(isHack())) {
            final KaitaiStream _io__raw_difWoHack = new ByteBufferKaitaiStream(1);
            this._io.addChildStream(_io__raw_difWoHack);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (1));
                final TypeTernaryOpaque _this = this;
                _io__raw_difWoHack.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_difWoHack = _io__raw_difWoHack.toByteArray();
                        if (_this._raw_difWoHack.length != 1)
                            throw new ConsistencyError("raw(dif_wo_hack)", _this._raw_difWoHack.length, 1);
                        parent.writeBytes(_this._raw_difWoHack);
                    }
                });
            }
            this.difWoHack._write_Seq(_io__raw_difWoHack);
        }
        if (isHack()) {
            final KaitaiStream _io__raw_difWithHack = new ByteBufferKaitaiStream(1);
            this._io.addChildStream(_io__raw_difWithHack);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (1));
                final byte _processXorArg = 3;
                final TypeTernaryOpaque _this = this;
                _io__raw_difWithHack.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_difWithHack = _io__raw_difWithHack.toByteArray();
                        _this._raw__raw_difWithHack = KaitaiStream.processXor(_this._raw_difWithHack, ((Number) (_processXorArg)).byteValue());
                        if (_this._raw__raw_difWithHack.length != 1)
                            throw new ConsistencyError("raw(dif_with_hack)", _this._raw__raw_difWithHack.length, 1);
                        parent.writeBytes(_this._raw__raw_difWithHack);
                    }
                });
            }
            this.difWithHack._write_Seq(_io__raw_difWithHack);
        }
    }

    public void _check() {
        if (!(isHack())) {
        }
        if (isHack()) {
        }
        _dirty = false;
    }
    private HelloWorld dif;
    public HelloWorld dif() {
        if (this.dif != null)
            return this.dif;
        this.dif = (!(isHack()) ? difWoHack() : difWithHack());
        return this.dif;
    }
    public void _invalidateDif() { this.dif = null; }
    private Boolean isHack;
    public Boolean isHack() {
        if (this.isHack != null)
            return this.isHack;
        this.isHack = false;
        return this.isHack;
    }
    public void _invalidateIsHack() { this.isHack = null; }
    private HelloWorld difWoHack;
    private HelloWorld difWithHack;
    private TypeTernaryOpaque _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_difWoHack;
    private byte[] _raw_difWithHack;
    private byte[] _raw__raw_difWithHack;
    public HelloWorld difWoHack() { return difWoHack; }
    public void setDifWoHack(HelloWorld _v) { _dirty = true; difWoHack = _v; }
    public HelloWorld difWithHack() { return difWithHack; }
    public void setDifWithHack(HelloWorld _v) { _dirty = true; difWithHack = _v; }
    public TypeTernaryOpaque _root() { return _root; }
    public void set_root(TypeTernaryOpaque _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_difWoHack() { return _raw_difWoHack; }
    public void set_raw_DifWoHack(byte[] _v) { _dirty = true; _raw_difWoHack = _v; }
    public byte[] _raw_difWithHack() { return _raw_difWithHack; }
    public void set_raw_DifWithHack(byte[] _v) { _dirty = true; _raw_difWithHack = _v; }
    public byte[] _raw__raw_difWithHack() { return _raw__raw_difWithHack; }
    public void set_raw__raw_DifWithHack(byte[] _v) { _dirty = true; _raw__raw_difWithHack = _v; }
}
