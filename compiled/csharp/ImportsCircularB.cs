// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsCircularB : KaitaiStruct
    {
        public static ImportsCircularB FromFile(string fileName)
        {
            return new ImportsCircularB(new KaitaiStream(fileName));
        }

        public ImportsCircularB(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsCircularB p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _initial = m_io.ReadU1();
            if (Initial == 65) {
                _backRef = new ImportsCircularA(m_io);
            }
        }
        public byte Initial { get { return _initial; } }
        public ImportsCircularA BackRef { get { return _backRef; } }
        public ImportsCircularB M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte _initial;
        private ImportsCircularA _backRef;
        private ImportsCircularB m_root;
        private KaitaiStruct m_parent;
    }
}
