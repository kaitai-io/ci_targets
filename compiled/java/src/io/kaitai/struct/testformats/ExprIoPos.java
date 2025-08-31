// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ExprIoPos extends KaitaiStruct {
    public static ExprIoPos fromFile(String fileName) throws IOException {
        return new ExprIoPos(new ByteBufferKaitaiStream(fileName));
    }

    public ExprIoPos(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoPos(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprIoPos(KaitaiStream _io, KaitaiStruct _parent, ExprIoPos _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_substream1 = this._io.substream(16);
        this.substream1 = new AllPlusNumber(_io_substream1, this, _root);
        KaitaiStream _io_substream2 = this._io.substream(14);
        this.substream2 = new AllPlusNumber(_io_substream2, this, _root);
    }

    public void _fetchInstances() {
        this.substream1._fetchInstances();
        this.substream2._fetchInstances();
    }
    public static class AllPlusNumber extends KaitaiStruct {
        public static AllPlusNumber fromFile(String fileName) throws IOException {
            return new AllPlusNumber(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.myStr = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
            this.body = this._io.readBytes((_io().size() - _io().pos()) - 2);
            this.number = this._io.readU2le();
        }

        public void _fetchInstances() {
        }
        private String myStr;
        private byte[] body;
        private int number;
        private ExprIoPos _root;
        private ExprIoPos _parent;
        public String myStr() { return myStr; }
        public byte[] body() { return body; }
        public int number() { return number; }
        public ExprIoPos _root() { return _root; }
        public ExprIoPos _parent() { return _parent; }
    }
    private AllPlusNumber substream1;
    private AllPlusNumber substream2;
    private ExprIoPos _root;
    private KaitaiStruct _parent;
    public AllPlusNumber substream1() { return substream1; }
    public AllPlusNumber substream2() { return substream2; }
    public ExprIoPos _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
