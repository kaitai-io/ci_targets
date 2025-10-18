// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsCircularB extends KaitaiStruct {
    public static ImportsCircularB fromFile(String fileName) throws IOException {
        return new ImportsCircularB(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsCircularB(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsCircularB(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsCircularB(KaitaiStream _io, KaitaiStruct _parent, ImportsCircularB _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.initial = this._io.readU1();
        if (initial() == 65) {
            this.backRef = new ImportsCircularA(this._io);
        }
    }

    public void _fetchInstances() {
        if (initial() == 65) {
            this.backRef._fetchInstances();
        }
    }
    public int initial() { return initial; }
    public ImportsCircularA backRef() { return backRef; }
    public ImportsCircularB _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private int initial;
    private ImportsCircularA backRef;
    private ImportsCircularB _root;
    private KaitaiStruct _parent;
}
