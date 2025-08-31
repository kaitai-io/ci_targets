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
    }

    public void _fetchInstances() {
        this.substream1._fetchInstances();
        this.substream2._fetchInstances();
    }

    public void _write_Seq() {
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
                        throw new ConsistencyError("raw(substream1)", _this._raw_substream1.length, 16);
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
                        throw new ConsistencyError("raw(substream2)", _this._raw_substream2.length, 14);
                    parent.writeBytes(_this._raw_substream2);
                }
            });
        }
        this.substream2._write_Seq(_io__raw_substream2);
    }

    public void _check() {
        if (!Objects.equals(this.substream1._root(), _root()))
            throw new ConsistencyError("substream1", this.substream1._root(), _root());
        if (!Objects.equals(this.substream1._parent(), this))
            throw new ConsistencyError("substream1", this.substream1._parent(), this);
        if (!Objects.equals(this.substream2._root(), _root()))
            throw new ConsistencyError("substream2", this.substream2._root(), _root());
        if (!Objects.equals(this.substream2._parent(), this))
            throw new ConsistencyError("substream2", this.substream2._parent(), this);
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
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes((this.myStr).getBytes(Charset.forName("UTF-8")));
            this._io.writeU1(0);
            if (this.body.length != (_io().size() - _io().pos()) - 2)
                throw new ConsistencyError("body", this.body.length, (_io().size() - _io().pos()) - 2);
            this._io.writeBytes(this.body);
            this._io.writeU2le(this.number);
        }

        public void _check() {
            if (KaitaiStream.byteArrayIndexOf((this.myStr).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                throw new ConsistencyError("my_str", KaitaiStream.byteArrayIndexOf((this.myStr).getBytes(Charset.forName("UTF-8")), ((byte) 0)), -1);
        }
        private String myStr;
        private byte[] body;
        private int number;
        private ExprIoPos _root;
        private ExprIoPos _parent;
        public String myStr() { return myStr; }
        public void setMyStr(String _v) { myStr = _v; }
        public byte[] body() { return body; }
        public void setBody(byte[] _v) { body = _v; }
        public int number() { return number; }
        public void setNumber(int _v) { number = _v; }
        public ExprIoPos _root() { return _root; }
        public void set_root(ExprIoPos _v) { _root = _v; }
        public ExprIoPos _parent() { return _parent; }
        public void set_parent(ExprIoPos _v) { _parent = _v; }
    }
    private AllPlusNumber substream1;
    private AllPlusNumber substream2;
    private ExprIoPos _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_substream1;
    private byte[] _raw_substream2;
    public AllPlusNumber substream1() { return substream1; }
    public void setSubstream1(AllPlusNumber _v) { substream1 = _v; }
    public AllPlusNumber substream2() { return substream2; }
    public void setSubstream2(AllPlusNumber _v) { substream2 = _v; }
    public ExprIoPos _root() { return _root; }
    public void set_root(ExprIoPos _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_substream1() { return _raw_substream1; }
    public void set_raw_Substream1(byte[] _v) { _raw_substream1 = _v; }
    public byte[] _raw_substream2() { return _raw_substream2; }
    public void set_raw_Substream2(byte[] _v) { _raw_substream2 = _v; }
}
