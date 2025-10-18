// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EofExceptionBytes : KaitaiStruct
    {
        public static EofExceptionBytes FromFile(string fileName)
        {
            return new EofExceptionBytes(new KaitaiStream(fileName));
        }

        public EofExceptionBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, EofExceptionBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _buf = m_io.ReadBytes(13);
        }
        public byte[] Buf { get { return _buf; } }
        public EofExceptionBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte[] _buf;
        private EofExceptionBytes m_root;
        private KaitaiStruct m_parent;
    }
}
