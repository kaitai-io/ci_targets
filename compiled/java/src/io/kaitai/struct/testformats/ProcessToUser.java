// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ProcessToUser extends KaitaiStruct {
    public static ProcessToUser fromFile(String fileName) throws IOException {
        return new ProcessToUser(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessToUser(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessToUser(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessToUser(KaitaiStream _io, KaitaiStruct _parent, ProcessToUser _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw__raw_buf1 = this._io.readBytes(5);
        this._raw_buf1 = KaitaiStream.processRotateLeft(this._raw__raw_buf1, 3, 1);
        KaitaiStream _io__raw_buf1 = new ByteBufferKaitaiStream(this._raw_buf1);
        this.buf1 = new JustStr(_io__raw_buf1, this, _root);
    }

    public void _fetchInstances() {
        this.buf1._fetchInstances();
    }
    public static class JustStr extends KaitaiStruct {
        public static JustStr fromFile(String fileName) throws IOException {
            return new JustStr(new ByteBufferKaitaiStream(fileName));
        }

        public JustStr(KaitaiStream _io) {
            this(_io, null, null);
        }

        public JustStr(KaitaiStream _io, ProcessToUser _parent) {
            this(_io, _parent, null);
        }

        public JustStr(KaitaiStream _io, ProcessToUser _parent, ProcessToUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.str = new String(this._io.readBytesFull(), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        private String str;
        private ProcessToUser _root;
        private ProcessToUser _parent;
        public String str() { return str; }
        public ProcessToUser _root() { return _root; }
        public ProcessToUser _parent() { return _parent; }
    }
    private JustStr buf1;
    private ProcessToUser _root;
    private KaitaiStruct _parent;
    private byte[] _raw_buf1;
    private byte[] _raw__raw_buf1;
    public JustStr buf1() { return buf1; }
    public ProcessToUser _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_buf1() { return _raw_buf1; }
    public byte[] _raw__raw_buf1() { return _raw__raw_buf1; }
}
