// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class StrPadTermEqual extends KaitaiStruct {
    public static StrPadTermEqual fromFile(String fileName) throws IOException {
        return new StrPadTermEqual(new ByteBufferKaitaiStream(fileName));
    }

    public StrPadTermEqual(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrPadTermEqual(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrPadTermEqual(KaitaiStream _io, KaitaiStruct _parent, StrPadTermEqual _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.s1 = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false), StandardCharsets.UTF_8);
        this.s2 = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, true), StandardCharsets.UTF_8);
        this.s3 = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 43, false), StandardCharsets.UTF_8);
        this.s4 = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 46, true), StandardCharsets.UTF_8);
    }

    public void _fetchInstances() {
    }
    private String s1;
    private String s2;
    private String s3;
    private String s4;
    private StrPadTermEqual _root;
    private KaitaiStruct _parent;
    public String s1() { return s1; }
    public String s2() { return s2; }
    public String s3() { return s3; }
    public String s4() { return s4; }
    public StrPadTermEqual _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
