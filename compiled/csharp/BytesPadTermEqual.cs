// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BytesPadTermEqual : KaitaiStruct
    {
        public static BytesPadTermEqual FromFile(string fileName)
        {
            return new BytesPadTermEqual(new KaitaiStream(fileName));
        }

        public BytesPadTermEqual(KaitaiStream p__io, KaitaiStruct p__parent = null, BytesPadTermEqual p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _s1 = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 64), 64, false);
            _s2 = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 64, true);
            _s3 = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 43, false);
            _s4 = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 46), 46, true);
        }
        public byte[] S1 { get { return _s1; } }
        public byte[] S2 { get { return _s2; } }
        public byte[] S3 { get { return _s3; } }
        public byte[] S4 { get { return _s4; } }
        public BytesPadTermEqual M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte[] _s1;
        private byte[] _s2;
        private byte[] _s3;
        private byte[] _s4;
        private BytesPadTermEqual m_root;
        private KaitaiStruct m_parent;
    }
}
