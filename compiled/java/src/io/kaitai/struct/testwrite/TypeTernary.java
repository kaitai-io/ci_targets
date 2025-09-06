// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class TypeTernary extends KaitaiStruct.ReadWrite {
    public static TypeTernary fromFile(String fileName) throws IOException {
        return new TypeTernary(new ByteBufferKaitaiStream(fileName));
    }
    public TypeTernary() {
        this(null, null, null);
    }

    public TypeTernary(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TypeTernary(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TypeTernary(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TypeTernary _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        if (!(isHack())) {
            this._raw_difWoHack = this._io.readBytes(1);
            KaitaiStream _io__raw_difWoHack = new ByteBufferKaitaiStream(this._raw_difWoHack);
            this.difWoHack = new Dummy(_io__raw_difWoHack, this, _root);
            this.difWoHack._read();
        }
        this._raw__raw_difWithHack = this._io.readBytes(1);
        this._raw_difWithHack = KaitaiStream.processXor(this._raw__raw_difWithHack, ((byte) 3));
        KaitaiStream _io__raw_difWithHack = new ByteBufferKaitaiStream(this._raw_difWithHack);
        this.difWithHack = new Dummy(_io__raw_difWithHack, this, _root);
        this.difWithHack._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        if (!(isHack())) {
            this.difWoHack._fetchInstances();
        }
        this.difWithHack._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        if (!(isHack())) {
            final KaitaiStream _io__raw_difWoHack = new ByteBufferKaitaiStream(1);
            this._io.addChildStream(_io__raw_difWoHack);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (1));
                final TypeTernary _this = this;
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
        final KaitaiStream _io__raw_difWithHack = new ByteBufferKaitaiStream(1);
        this._io.addChildStream(_io__raw_difWithHack);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (1));
            final byte _processXorArg = 3;
            final TypeTernary _this = this;
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

    public void _check() {
        if (!(isHack())) {
            if (!Objects.equals(this.difWoHack._root(), _root()))
                throw new ConsistencyError("dif_wo_hack", this.difWoHack._root(), _root());
            if (!Objects.equals(this.difWoHack._parent(), this))
                throw new ConsistencyError("dif_wo_hack", this.difWoHack._parent(), this);
        }
        if (!Objects.equals(this.difWithHack._root(), _root()))
            throw new ConsistencyError("dif_with_hack", this.difWithHack._root(), _root());
        if (!Objects.equals(this.difWithHack._parent(), this))
            throw new ConsistencyError("dif_with_hack", this.difWithHack._parent(), this);
        _dirty = false;
    }
    public static class Dummy extends KaitaiStruct.ReadWrite {
        public static Dummy fromFile(String fileName) throws IOException {
            return new Dummy(new ByteBufferKaitaiStream(fileName));
        }
        public Dummy() {
            this(null, null, null);
        }

        public Dummy(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Dummy(KaitaiStream _io, TypeTernary _parent) {
            this(_io, _parent, null);
        }

        public Dummy(KaitaiStream _io, TypeTernary _parent, TypeTernary _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.value);
        }

        public void _check() {
            _dirty = false;
        }
        private int value;
        private TypeTernary _root;
        private TypeTernary _parent;
        public int value() { return value; }
        public void setValue(int _v) { _dirty = true; value = _v; }
        public TypeTernary _root() { return _root; }
        public void set_root(TypeTernary _v) { _dirty = true; _root = _v; }
        public TypeTernary _parent() { return _parent; }
        public void set_parent(TypeTernary _v) { _dirty = true; _parent = _v; }
    }
    private Dummy dif;
    public Dummy dif() {
        if (this.dif != null)
            return this.dif;
        this.dif = (!(isHack()) ? difWoHack() : difWithHack());
        return this.dif;
    }
    public void _invalidateDif() { this.dif = null; }
    private Integer difValue;
    public Integer difValue() {
        if (this.difValue != null)
            return this.difValue;
        this.difValue = ((Number) (dif().value())).intValue();
        return this.difValue;
    }
    public void _invalidateDifValue() { this.difValue = null; }
    private Boolean isHack;
    public Boolean isHack() {
        if (this.isHack != null)
            return this.isHack;
        this.isHack = true;
        return this.isHack;
    }
    public void _invalidateIsHack() { this.isHack = null; }
    private Dummy difWoHack;
    private Dummy difWithHack;
    private TypeTernary _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_difWoHack;
    private byte[] _raw_difWithHack;
    private byte[] _raw__raw_difWithHack;
    public Dummy difWoHack() { return difWoHack; }
    public void setDifWoHack(Dummy _v) { _dirty = true; difWoHack = _v; }
    public Dummy difWithHack() { return difWithHack; }
    public void setDifWithHack(Dummy _v) { _dirty = true; difWithHack = _v; }
    public TypeTernary _root() { return _root; }
    public void set_root(TypeTernary _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_difWoHack() { return _raw_difWoHack; }
    public void set_raw_DifWoHack(byte[] _v) { _dirty = true; _raw_difWoHack = _v; }
    public byte[] _raw_difWithHack() { return _raw_difWithHack; }
    public void set_raw_DifWithHack(byte[] _v) { _dirty = true; _raw_difWithHack = _v; }
    public byte[] _raw__raw_difWithHack() { return _raw__raw_difWithHack; }
    public void set_raw__raw_DifWithHack(byte[] _v) { _dirty = true; _raw__raw_difWithHack = _v; }
}
