// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsAbs : KaitaiStruct
    {
        public static ImportsAbs FromFile(string fileName)
        {
            return new ImportsAbs(new KaitaiStream(fileName));
        }

        public ImportsAbs(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsAbs p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _len = new VlqBase128Le(m_io);
            _body = m_io.ReadBytes(Len.Value);
        }
        public VlqBase128Le Len { get { return _len; } }
        public byte[] Body { get { return _body; } }
        public ImportsAbs M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private VlqBase128Le _len;
        private byte[] _body;
        private ImportsAbs m_root;
        private KaitaiStruct m_parent;
    }
}
