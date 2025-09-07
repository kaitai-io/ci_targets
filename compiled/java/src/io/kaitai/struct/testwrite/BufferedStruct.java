// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class BufferedStruct extends KaitaiStruct.ReadWrite {
    public static BufferedStruct fromFile(String fileName) throws IOException {
        return new BufferedStruct(new ByteBufferKaitaiStream(fileName));
    }
    public BufferedStruct() {
        this(null, null, null);
    }

    public BufferedStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BufferedStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BufferedStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BufferedStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.len1 = this._io.readU4le();
        this._raw_block1 = this._io.readBytes(len1());
        KaitaiStream _io__raw_block1 = new ByteBufferKaitaiStream(this._raw_block1);
        this.block1 = new Block(_io__raw_block1, this, _root);
        this.block1._read();
        this.len2 = this._io.readU4le();
        this._raw_block2 = this._io.readBytes(len2());
        KaitaiStream _io__raw_block2 = new ByteBufferKaitaiStream(this._raw_block2);
        this.block2 = new Block(_io__raw_block2, this, _root);
        this.block2._read();
        this.finisher = this._io.readU4le();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.block1._fetchInstances();
        this.block2._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(this.len1);
        final KaitaiStream _io__raw_block1 = new ByteBufferKaitaiStream(len1());
        this._io.addChildStream(_io__raw_block1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (len1()));
            final BufferedStruct _this = this;
            _io__raw_block1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_block1 = _io__raw_block1.toByteArray();
                    if (_this._raw_block1.length != len1())
                        throw new ConsistencyError("raw(block1)", len1(), _this._raw_block1.length);
                    parent.writeBytes(_this._raw_block1);
                }
            });
        }
        this.block1._write_Seq(_io__raw_block1);
        this._io.writeU4le(this.len2);
        final KaitaiStream _io__raw_block2 = new ByteBufferKaitaiStream(len2());
        this._io.addChildStream(_io__raw_block2);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (len2()));
            final BufferedStruct _this = this;
            _io__raw_block2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_block2 = _io__raw_block2.toByteArray();
                    if (_this._raw_block2.length != len2())
                        throw new ConsistencyError("raw(block2)", len2(), _this._raw_block2.length);
                    parent.writeBytes(_this._raw_block2);
                }
            });
        }
        this.block2._write_Seq(_io__raw_block2);
        this._io.writeU4le(this.finisher);
    }

    public void _check() {
        if (!Objects.equals(this.block1._root(), _root()))
            throw new ConsistencyError("block1", _root(), this.block1._root());
        if (!Objects.equals(this.block1._parent(), this))
            throw new ConsistencyError("block1", this, this.block1._parent());
        if (!Objects.equals(this.block2._root(), _root()))
            throw new ConsistencyError("block2", _root(), this.block2._root());
        if (!Objects.equals(this.block2._parent(), this))
            throw new ConsistencyError("block2", this, this.block2._parent());
        _dirty = false;
    }
    public static class Block extends KaitaiStruct.ReadWrite {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }
        public Block() {
            this(null, null, null);
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, BufferedStruct _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, BufferedStruct _parent, BufferedStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.number1 = this._io.readU4le();
            this.number2 = this._io.readU4le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU4le(this.number1);
            this._io.writeU4le(this.number2);
        }

        public void _check() {
            _dirty = false;
        }
        private long number1;
        private long number2;
        private BufferedStruct _root;
        private BufferedStruct _parent;
        public long number1() { return number1; }
        public void setNumber1(long _v) { _dirty = true; number1 = _v; }
        public long number2() { return number2; }
        public void setNumber2(long _v) { _dirty = true; number2 = _v; }
        public BufferedStruct _root() { return _root; }
        public void set_root(BufferedStruct _v) { _dirty = true; _root = _v; }
        public BufferedStruct _parent() { return _parent; }
        public void set_parent(BufferedStruct _v) { _dirty = true; _parent = _v; }
    }
    private long len1;
    private Block block1;
    private long len2;
    private Block block2;
    private long finisher;
    private BufferedStruct _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_block1;
    private byte[] _raw_block2;
    public long len1() { return len1; }
    public void setLen1(long _v) { _dirty = true; len1 = _v; }
    public Block block1() { return block1; }
    public void setBlock1(Block _v) { _dirty = true; block1 = _v; }
    public long len2() { return len2; }
    public void setLen2(long _v) { _dirty = true; len2 = _v; }
    public Block block2() { return block2; }
    public void setBlock2(Block _v) { _dirty = true; block2 = _v; }
    public long finisher() { return finisher; }
    public void setFinisher(long _v) { _dirty = true; finisher = _v; }
    public BufferedStruct _root() { return _root; }
    public void set_root(BufferedStruct _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_block1() { return _raw_block1; }
    public void set_raw_Block1(byte[] _v) { _dirty = true; _raw_block1 = _v; }
    public byte[] _raw_block2() { return _raw_block2; }
    public void set_raw_Block2(byte[] _v) { _dirty = true; _raw_block2 = _v; }
}
