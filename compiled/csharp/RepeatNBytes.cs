// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatNBytes : KaitaiStruct
    {
        public static RepeatNBytes FromFile(string fileName)
        {
            return new RepeatNBytes(new KaitaiStream(fileName));
        }

        public RepeatNBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatNBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records = new List<byte[]>();
            for (var i = 0; i < 3; i++)
            {
                _records.Add(m_io.ReadBytes(5));
            }
        }
        private List<byte[]> _records;
        private RepeatNBytes m_root;
        private KaitaiStruct m_parent;
        public List<byte[]> Records { get { return _records; } }
        public RepeatNBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
