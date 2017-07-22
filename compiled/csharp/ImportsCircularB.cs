// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ImportsCircularB : KaitaiStruct
    {
        public static ImportsCircularB FromFile(string fileName)
        {
            return new ImportsCircularB(new KaitaiStream(fileName));
        }

        public ImportsCircularB(KaitaiStream io, KaitaiStruct parent = null, ImportsCircularB root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _initial = m_io.ReadU1();
            if (Initial == 65) {
                _backRef = new ImportsCircularA(m_io);
            }
        }
        private byte _initial;
        private ImportsCircularA _backRef;
        private ImportsCircularB m_root;
        private KaitaiStruct m_parent;
        public byte Initial { get { return _initial; } }
        public ImportsCircularA BackRef { get { return _backRef; } }
        public ImportsCircularB M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
