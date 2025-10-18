// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

public class ExprIoPos extends KaitaiStruct.ReadWrite {
    public static ExprIoPos fromFile(String fileName) throws IOException {
        return new ExprIoPos(new ByteBufferKaitaiStream(fileName));
    }
    public ExprIoPos() {
        this(null, null, null);
    }

    public ExprIoPos(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoPos(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprIoPos(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprIoPos _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_substream1 = this._io.readBytes(16);
        KaitaiStream _io__raw_substream1 = new ByteBufferKaitaiStream(this._raw_substream1);
        this.substream1 = new AllPlusNumber(_io__raw_substream1, this, _root);
        this.substream1._read();
        this._raw_substream2 = this._io.readBytes(14);
        KaitaiStream _io__raw_substream2 = new ByteBufferKaitaiStream(this._raw_substream2);
        this.substream2 = new AllPlusNumber(_io__raw_substream2, this, _root);
        this.substream2._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.substream1._fetchInstances();
        this.substream2._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_substream1 = new ByteBufferKaitaiStream(16);
        this._io.addChildStream(_io__raw_substream1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (16));
            final ExprIoPos _this = this;
            _io__raw_substream1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_substream1 = _io__raw_substream1.toByteArray();
                    if (_this._raw_substream1.length != 16)
                        throw new ConsistencyError("raw(substream1)", 16, _this._raw_substream1.length);
                    parent.writeBytes(_this._raw_substream1);
                }
            });
        }
        this.substream1._write_Seq(_io__raw_substream1);
        final KaitaiStream _io__raw_substream2 = new ByteBufferKaitaiStream(14);
        this._io.addChildStream(_io__raw_substream2);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (14));
            final ExprIoPos _this = this;
            _io__raw_substream2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_substream2 = _io__raw_substream2.toByteArray();
                    if (_this._raw_substream2.length != 14)
                        throw new ConsistencyError("raw(substream2)", 14, _this._raw_substream2.length);
                    parent.writeBytes(_this._raw_substream2);
                }
            });
        }
        this.substream2._write_Seq(_io__raw_substream2);
    }

    public void _check() {
        if (!Objects.equals(this.substream1._root(), _root()))
            throw new ConsistencyError("substream1", _root(), this.substream1._root());
        if (!Objects.equals(this.substream1._parent(), this))
            throw new ConsistencyError("substream1", this, this.substream1._parent());
        if (!Objects.equals(this.substream2._root(), _root()))
            throw new ConsistencyError("substream2", _root(), this.substream2._root());
        if (!Objects.equals(this.substream2._parent(), this))
            throw new ConsistencyError("substream2", this, this.substream2._parent());
        _dirty = false;
    }
    public static class AllPlusNumber extends KaitaiStruct.ReadWrite {
        public static AllPlusNumber fromFile(String fileName) throws IOException {
            return new AllPlusNumber(new ByteBufferKaitaiStream(fileName));
        }
        public AllPlusNumber() {
            this(null, null, null);
        }

        public AllPlusNumber(KaitaiStream _io) {
            this(_io, null, null);
        }

        public AllPlusNumber(KaitaiStream _io, ExprIoPos _parent) {
            this(_io, _parent, null);
        }

        public AllPlusNumber(KaitaiStream _io, ExprIoPos _parent, ExprIoPos _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.myStr = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
            this.body = this._io.readBytes((_io().size() - _io().pos()) - 2);
            this.number = this._io.readU2le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.myStr).getBytes(Charset.forName("UTF-8")));
            this._io.writeU1(0);
            if (this.body.length != (_io().size() - _io().pos()) - 2)
                throw new ConsistencyError("body", (_io().size() - _io().pos()) - 2, this.body.length);
            this._io.writeBytes(this.body);
            this._io.writeU2le(this.number);
        }

        public void _check() {
            if (KaitaiStream.byteArrayIndexOf((this.myStr).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                throw new ConsistencyError("my_str", -1, KaitaiStream.byteArrayIndexOf((this.myStr).getBytes(Charset.forName("UTF-8")), ((byte) 0)));
            _dirty = false;
        }
        public String myStr() { return myStr; }
        public void setMyStr(String _v) { _dirty = true; myStr = _v; }
        public byte[] body() { return body; }
        public void setBody(byte[] _v) { _dirty = true; body = _v; }
        public int number() { return number; }
        public void setNumber(int _v) { _dirty = true; number = _v; }
        public ExprIoPos _root() { return _root; }
        public void set_root(ExprIoPos _v) { _dirty = true; _root = _v; }
        public ExprIoPos _parent() { return _parent; }
        public void set_parent(ExprIoPos _v) { _dirty = true; _parent = _v; }
        private String myStr;
        private byte[] body;
        private int number;
        private ExprIoPos _root;
        private ExprIoPos _parent;
    }
    public AllPlusNumber substream1() { return substream1; }
    public void setSubstream1(AllPlusNumber _v) { _dirty = true; substream1 = _v; }
    public AllPlusNumber substream2() { return substream2; }
    public void setSubstream2(AllPlusNumber _v) { _dirty = true; substream2 = _v; }
    public ExprIoPos _root() { return _root; }
    public void set_root(ExprIoPos _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_substream1() { return _raw_substream1; }
    public void set_raw_Substream1(byte[] _v) { _dirty = true; _raw_substream1 = _v; }
    public byte[] _raw_substream2() { return _raw_substream2; }
    public void set_raw_Substream2(byte[] _v) { _dirty = true; _raw_substream2 = _v; }
    private AllPlusNumber substream1;
    private AllPlusNumber substream2;
    private ExprIoPos _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_substream1;
    private byte[] _raw_substream2;
}
