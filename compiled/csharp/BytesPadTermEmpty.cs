// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BytesPadTermEmpty : KaitaiStruct
    {
        public static BytesPadTermEmpty FromFile(string fileName)
        {
            return new BytesPadTermEmpty(new KaitaiStream(fileName));
        }

        public BytesPadTermEmpty(KaitaiStream p__io, KaitaiStruct p__parent = null, BytesPadTermEmpty p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _strPad = KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 64);
            _strTerm = KaitaiStream.BytesTerminate(m_io.ReadBytes(20), 64, false);
            _strTermAndPad = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 64, false);
            _strTermInclude = KaitaiStream.BytesTerminate(m_io.ReadBytes(20), 64, true);
        }
        private byte[] _strPad;
        private byte[] _strTerm;
        private byte[] _strTermAndPad;
        private byte[] _strTermInclude;
        private BytesPadTermEmpty m_root;
        private KaitaiStruct m_parent;
        public byte[] StrPad { get { return _strPad; } }
        public byte[] StrTerm { get { return _strTerm; } }
        public byte[] StrTermAndPad { get { return _strTermAndPad; } }
        public byte[] StrTermInclude { get { return _strTermInclude; } }
        public BytesPadTermEmpty M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
