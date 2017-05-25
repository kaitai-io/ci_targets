// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosU4 : KaitaiStruct
    {
        public static RepeatEosU4 FromFile(string fileName)
        {
            return new RepeatEosU4(new KaitaiStream(fileName));
        }

        public RepeatEosU4(KaitaiStream io, KaitaiStruct parent = null, RepeatEosU4 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _numbers = new List<uint>();
            while (!m_io.IsEof) {
                _numbers.Add(m_io.ReadU4le());
            }
            }
        private List<uint> _numbers;
        private RepeatEosU4 m_root;
        private KaitaiStruct m_parent;
        public List<uint> Numbers { get { return _numbers; } }
        public RepeatEosU4 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
