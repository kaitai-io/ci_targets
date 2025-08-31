// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BytesPadTermZeroSize extends KaitaiStruct {
    public static BytesPadTermZeroSize fromFile(String fileName) throws IOException {
        return new BytesPadTermZeroSize(new ByteBufferKaitaiStream(fileName));
    }

    public BytesPadTermZeroSize(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BytesPadTermZeroSize(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BytesPadTermZeroSize(KaitaiStream _io, KaitaiStruct _parent, BytesPadTermZeroSize _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.strPad = KaitaiStream.bytesStripRight(this._io.readBytes(0), (byte) 64);
        this.strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(0), (byte) 64, false);
        this.strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(0), (byte) 43), (byte) 64, false);
        this.strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(0), (byte) 64, true);
    }

    public void _fetchInstances() {
    }
    private byte[] strPad;
    private byte[] strTerm;
    private byte[] strTermAndPad;
    private byte[] strTermInclude;
    private BytesPadTermZeroSize _root;
    private KaitaiStruct _parent;
    public byte[] strPad() { return strPad; }
    public byte[] strTerm() { return strTerm; }
    public byte[] strTermAndPad() { return strTermAndPad; }
    public byte[] strTermInclude() { return strTermInclude; }
    public BytesPadTermZeroSize _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
