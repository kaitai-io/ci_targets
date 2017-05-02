// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsAbs : KaitaiStruct
    {
        public static ImportsAbs FromFile(string fileName)
        {
            return new ImportsAbs(new KaitaiStream(fileName));
        }

        public ImportsAbs(KaitaiStream io, KaitaiStruct parent = null, ImportsAbs root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _len = new VlqBase128Le(m_io);
            _body = m_io.ReadBytes(Len.Value);
        }
        private VlqBase128Le _len;
        private byte[] _body;
        private ImportsAbs m_root;
        private KaitaiStruct m_parent;
        public VlqBase128Le Len { get { return _len; } }
        public byte[] Body { get { return _body; } }
        public ImportsAbs M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
